import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'un_match_user_widget.dart' show UnMatchUserWidget;
import 'package:flutter/material.dart';

class UnMatchUserModel extends FlutterFlowModel<UnMatchUserWidget> {
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
  CrushRecord? crushDocDelete1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CrushRecord? crushDocDelete2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ChatsRecord? chatToDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
