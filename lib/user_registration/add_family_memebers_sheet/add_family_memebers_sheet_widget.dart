import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_family_memebers_sheet_model.dart';
export 'add_family_memebers_sheet_model.dart';

class AddFamilyMemebersSheetWidget extends StatefulWidget {
  const AddFamilyMemebersSheetWidget({Key? key}) : super(key: key);

  @override
  _AddFamilyMemebersSheetWidgetState createState() =>
      _AddFamilyMemebersSheetWidgetState();
}

class _AddFamilyMemebersSheetWidgetState
    extends State<AddFamilyMemebersSheetWidget> {
  late AddFamilyMemebersSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddFamilyMemebersSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
