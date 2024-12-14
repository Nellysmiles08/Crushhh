import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'school_widget.dart' show SchoolWidget;
import 'package:flutter/material.dart';

class SchoolModel extends FlutterFlowModel<SchoolWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in School widget.
  List<ChatsRecord>? totalChatsSchool;
  // Stores action output result for [Firestore Query - Query a collection] action in School widget.
  List<ChatsRecord>? readChatsSchool;
  // State field(s) for schoolSearch widget.
  FocusNode? schoolSearchFocusNode;
  TextEditingController? schoolSearchTextController;
  String? Function(BuildContext, String?)? schoolSearchTextControllerValidator;
  List<UserRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    schoolSearchFocusNode?.dispose();
    schoolSearchTextController?.dispose();
  }
}
