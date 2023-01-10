import '../enums/app-view-mode-enum.dart';

class AppConfig {
  final AppViewModeEnum appViewModeEnum;

  AppConfig(this.appViewModeEnum);

  bool get drawerEnabled => false;
}


abstract class PrimeiraClasse {

}

mixin MixinClasse {

}

class SegundaClasse implements PrimeiraClasse {

}

class TerceiraClasse extends SegundaClasse with MixinClasse {

}

class QuartaClasse extends TerceiraClasse {
  
}