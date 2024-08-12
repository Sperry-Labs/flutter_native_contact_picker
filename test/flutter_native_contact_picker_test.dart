import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/flutter_native_contact_picker.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_native_contact_picker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    //expect(await FlutterContactPicker., '42');
  });
}
