import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/widgets/display_received_data/display_received_data_widget.dart';
import '/widgets/strength_indicator/strength_indicator_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'device_page_widget.dart' show DevicePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DevicePageModel extends FlutterFlowModel<DevicePageWidget> {

  int? currentRssi;

  String? receivedValue;

  final unfocusNode = FocusNode();
  InstantTimer? rssiUpdateTimer;
  int? updatedRssi;
  late StrengthIndicatorModel strengthIndicatorModel;
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  late DisplayReceivedDataModel displayReceivedDataModel;

  void initState(BuildContext context) {
    strengthIndicatorModel =
        createModel(context, () => StrengthIndicatorModel());
    displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());
  }

  void dispose() {
    unfocusNode.dispose();
    rssiUpdateTimer?.cancel();
    strengthIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    displayReceivedDataModel.dispose();
  }

  /// More action blocks if necessary?
}
