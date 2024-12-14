import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_profile02_widget.dart' show CreateProfile02Widget;
import 'package:flutter/material.dart';

class CreateProfile02Model extends FlutterFlowModel<CreateProfile02Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for School widget.
  final schoolKey = GlobalKey();
  FocusNode? schoolFocusNode;
  TextEditingController? schoolTextController;
  String? schoolSelectedOption;
  String? Function(BuildContext, String?)? schoolTextControllerValidator;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    schoolFocusNode?.dispose();
  }
}
