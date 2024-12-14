import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'let_them_know_widget.dart' show LetThemKnowWidget;
import 'package:flutter/material.dart';

class LetThemKnowModel extends FlutterFlowModel<LetThemKnowWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> userList = [];
  void addToUserList(DocumentReference item) => userList.add(item);
  void removeFromUserList(DocumentReference item) => userList.remove(item);
  void removeAtIndexFromUserList(int index) => userList.removeAt(index);
  void insertAtIndexInUserList(int index, DocumentReference item) =>
      userList.insert(index, item);
  void updateUserListAtIndex(int index, Function(DocumentReference) updateFn) =>
      userList[index] = updateFn(userList[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CrushRecord? boldCrushDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CrushRecord? existingCrushDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
