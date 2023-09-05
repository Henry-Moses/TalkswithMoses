import '/backend/backend.dart';
import '/components/card27_insurance_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Card27InsuranceCard component.
  late Card27InsuranceCardModel card27InsuranceCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    card27InsuranceCardModel =
        createModel(context, () => Card27InsuranceCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    card27InsuranceCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
