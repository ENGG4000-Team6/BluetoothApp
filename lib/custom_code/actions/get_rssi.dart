import '/backend/schema/structs/index.dart';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<int> getRssi(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  return await device.readRssi();
}
