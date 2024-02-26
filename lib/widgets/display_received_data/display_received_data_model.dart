import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'display_received_data_widget.dart' show DisplayReceivedDataWidget;
import 'package:flutter/material.dart';

class DisplayReceivedDataModel
    extends FlutterFlowModel<DisplayReceivedDataWidget> {

  String? data;

  InstantTimer? receivedDataTimer;
  String? receivedData;
  //List<int>? receivedData;

  void initState(BuildContext context) {}

  void dispose() {
    receivedDataTimer?.cancel();
  }
}
