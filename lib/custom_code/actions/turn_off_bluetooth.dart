import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<bool> turnOffBluetooth() async {
  if (isAndroid) {
    return await FlutterBluePlus.instance.turnOff();
  }
  return true;
}
