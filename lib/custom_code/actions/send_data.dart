import '/backend/schema/structs/index.dart';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future sendData(BTDeviceStruct deviceInfo, String data) async {
  data += "\r\n";
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  final services = await device.discoverServices();
  for (BluetoothService service in services) {
    for (BluetoothCharacteristic characteristic in service.characteristics) {
      final isWrite = characteristic.properties.write;
      if (isWrite) {
       // await characteristic.write(data.codeUnits);
         try {
    await characteristic.write(data.codeUnits);
  } catch (error) {
    // Handle the error
    print('Error writing to characteristic: $error');
  }
      }
    }
  }
}
