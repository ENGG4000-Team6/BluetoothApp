import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<bool> turnOffBluetooth() async {
  if (isAndroid) {
    return await FlutterBluePlus.instance.turnOff();
  }
  return true;
}
