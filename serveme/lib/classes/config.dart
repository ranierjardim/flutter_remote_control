part of serveme;

class MongoConfig {
	MongoConfig({
		this.host,
		this.hosts,
		this.replica,
		required this.database,
		this.user,
		this.password,
		this.secure = false,
	}) {
		if (replica != null && hosts == null) throw Exception('Using MongoDB replica requires host list to be set');
		if (replica == null && host == null) throw Exception('MongoDB host parameter is not set');
	}

	final String? host;
	final List<String>? hosts;
	final String? replica;
	final String database;
	final String? user;
	final String? password;
	final bool secure;
}

class Config {
	Config(String yaml) {
		_map = loadYaml(yaml) as YamlMap?;
		if (_map == null) throw Exception('The current config is not valid YAML file');
	}

	YamlMap? _map = YamlMap();
	MongoConfig? _mongo;
	String? _socket;
	String? _host;
	int? _port;
	bool _debug = false;
	String _debugLog = 'debug.log';
	String _errorLog = 'error.log';
	final List<String> modules = <String>[];

	YamlMap get map => _map!;
	bool get debug => _debug;

	static Config _instantiateFromFile(String filename, {Config Function(String)? factory}) {
		final String yaml = File(filename).readAsStringSync();
		return _instantiate(yaml, factory: factory);
	}

	static Config _instantiate(String yaml, {Config Function(String)? factory}) {
		Config config;
		try {
			config = factory != null ? factory(yaml) : Config(yaml);
			if (config.map['mongo'] is YamlMap) {
				config._mongo = MongoConfig(
					host: cast<String?>(config.map['mongo']['host']),
					hosts: config.map['mongo']['host'] is YamlList ? (config.map['mongo']['host'] as YamlList).cast<String>() : null,
					replica: cast<String?>(config.map['mongo']['replica']),
					database: cast<String>(config.map['mongo']['database'], errorMessage: 'MongoDB database is not specified'),
					user: cast<String?>(config.map['mongo']['user']),
					password: cast<String?>(config.map['mongo']['password']),
					secure: cast<bool>(config.map['mongo']['secure'], fallback: false),
				);
			}
			config._socket = cast<String?>(config.map['socket']);
			config._host = cast<String?>(config.map['host']);
			config._port = cast<int?>(config.map['port']);
			config._debug = cast<bool>(config.map['debug'], fallback: false);
			config._debugLog = cast<String>(config.map['debug_log'], fallback: 'debug.log');
			config._errorLog = cast<String>(config.map['error_log'], fallback: 'error.log');
			if (config.map['modules'] is YamlList) config.modules.addAll((config.map['modules'] as YamlList).cast<String>());
		}
		catch (err) {
			throw Exception('Unable to load configuration file: $err');
		}
		return config;
	}
}
