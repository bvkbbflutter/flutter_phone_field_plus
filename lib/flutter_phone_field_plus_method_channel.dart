import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_phone_field_plus_platform_interface.dart';

/// An implementation of [FlutterPhoneFieldPlusPlatform] that uses method channels.
class MethodChannelFlutterPhoneFieldPlus extends FlutterPhoneFieldPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_phone_field_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
