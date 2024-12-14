import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'location_search_widget.dart' show LocationSearchWidget;
import 'package:flutter/material.dart';

class LocationSearchModel extends FlutterFlowModel<LocationSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for distance widget.
  String? distanceValue;
  FormFieldController<String>? distanceValueController;
  List<UserRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
