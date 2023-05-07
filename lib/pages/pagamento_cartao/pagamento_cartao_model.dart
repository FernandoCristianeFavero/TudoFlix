import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagamentoCartaoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController2;
  final emailAddressMask2 = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  // State field(s) for mes widget.
  TextEditingController? mesController;
  final mesMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? mesControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController3;
  final emailAddressMask3 = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? emailAddressController3Validator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController4;
  late bool emailAddressVisibility;
  final emailAddressMask4 = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? emailAddressController4Validator;
  // Stores action output result for [Backend Call - API (Obter Token do Carto)] action in Button widget.
  ApiCallResponse? apiResult138;
  // Stores action output result for [Backend Call - API (Criar Pagamento com cartao)] action in Button widget.
  ApiCallResponse? apiResultbf5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressVisibility = false;
  }

  void dispose() {
    emailAddressController1?.dispose();
    emailAddressController2?.dispose();
    mesController?.dispose();
    emailAddressController3?.dispose();
    emailAddressController4?.dispose();
  }

  /// Additional helper methods are added here.

}
