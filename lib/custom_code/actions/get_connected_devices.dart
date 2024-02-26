import '/backend/schema/structs/index.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<List<BTDeviceStruct>> getConnectedDevices() async {
  final flutterBlue = FlutterBluePlus.instance;
  final connectedDevices = await flutterBlue.connectedDevices;
  List<BTDeviceStruct> devices = [];
  for (int i = 0; i < connectedDevices.length; i++) {
    final deviceResult = connectedDevices[i];
    final deviceState = await deviceResult.state.first;
    if (deviceState == BluetoothDeviceState.connected) {
      final deviceRssi = await deviceResult.readRssi();
      devices.add(BTDeviceStruct(
        name: deviceResult.name,
        id: deviceResult.id.toString(),
        rssi: deviceRssi,
      ));
    }
  }
  return devices;
}
