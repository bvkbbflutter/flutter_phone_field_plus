import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_phone_field_plus/flutter_phone_field_plus.dart';
import 'package:flutter_phone_field_plus/flutter_phone_field_plus_platform_interface.dart';
import 'package:flutter_phone_field_plus/flutter_phone_field_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPhoneFieldPlusPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPhoneFieldPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPhoneFieldPlusPlatform initialPlatform = FlutterPhoneFieldPlusPlatform.instance;

  test('$MethodChannelFlutterPhoneFieldPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPhoneFieldPlus>());
  });

  test('getPlatformVersion', () async {
    FlutterPhoneFieldPlus flutterPhoneFieldPlusPlugin = FlutterPhoneFieldPlus();
    MockFlutterPhoneFieldPlusPlatform fakePlatform = MockFlutterPhoneFieldPlusPlatform();
    FlutterPhoneFieldPlusPlatform.instance = fakePlatform;

    expect(await flutterPhoneFieldPlusPlugin.getPlatformVersion(), '42');
  });
}
