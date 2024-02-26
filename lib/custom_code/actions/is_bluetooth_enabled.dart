
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<bool> isBluetoothEnabled() async {
  await FlutterBluePlus.instance.isOn;
  await Future.delayed(Duration(milliseconds: 100));
  final state = await FlutterBluePlus.instance.state.first;
  if (state == BluetoothState.on) {
    return true;
  }
  return false;
}
