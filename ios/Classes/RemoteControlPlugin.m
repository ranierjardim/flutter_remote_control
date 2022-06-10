#import "RemoteControlPlugin.h"
#if __has_include(<remote_control/remote_control-Swift.h>)
#import <remote_control/remote_control-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "remote_control-Swift.h"
#endif

@implementation RemoteControlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRemoteControlPlugin registerWithRegistrar:registrar];
}
@end
