import '/backend/schema/structs/index.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  final services = await device.discoverServices();
  for (BluetoothService service in services) {
    for (BluetoothCharacteristic characteristic in service.characteristics) {
      final isRead = characteristic.properties.read;
      final isNotify = characteristic.properties.notify;
      if (isRead && isNotify) {
        final value = await characteristic.read();
        return String.fromCharCodes(value);
      }
    }
  }
  return null;
}

//send as list
// Future<List<int>?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     for (BluetoothCharacteristic characteristic in service.characteristics) {
//       final isNotify = characteristic.properties.notify;
//       if (isNotify) {
//         final value = await characteristic.read();
//         return value;
//       }
//     }
//   }
//   return null;
// }
