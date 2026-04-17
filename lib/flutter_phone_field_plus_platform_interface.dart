import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_phone_field_plus_method_channel.dart';

abstract class FlutterPhoneFieldPlusPlatform extends PlatformInterface {
  /// Constructs a FlutterPhoneFieldPlusPlatform.
  FlutterPhoneFieldPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPhoneFieldPlusPlatform _instance = MethodChannelFlutterPhoneFieldPlus();

  /// The default instance of [FlutterPhoneFieldPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPhoneFieldPlus].
  static FlutterPhoneFieldPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPhoneFieldPlusPlatform] when
  /// they register themselves.
  static set instance(FlutterPhoneFieldPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
