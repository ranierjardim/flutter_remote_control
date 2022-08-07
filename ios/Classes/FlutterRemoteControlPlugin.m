#import "FlutterRemoteControlPlugin.h"
#if __has_include(<flutter_remote_control/flutter_remote_control-Swift.h>)
#import <flutter_remote_control/flutter_remote_control-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_remote_control-Swift.h"
#endif

@implementation FlutterRemoteControlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterRemoteControlPlugin registerWithRegistrar:registrar];
}
@end
