import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'matches_widget.dart' show MatchesWidget;
import 'package:flutter/material.dart';

class MatchesModel extends FlutterFlowModel<MatchesWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> matchList = [];
  void addToMatchList(DocumentReference item) => matchList.add(item);
  void removeFromMatchList(DocumentReference item) => matchList.remove(item);
  void removeAtIndexFromMatchList(int index) => matchList.removeAt(index);
  void insertAtIndexInMatchList(int index, DocumentReference item) =>
      matchList.insert(index, item);
  void updateMatchListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      matchList[index] = updateFn(matchList[index]);

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for matchSearch widget.
  FocusNode? matchSearchFocusNode;
  TextEditingController? matchSearchTextController;
  String? Function(BuildContext, String?)? matchSearchTextControllerValidator;
  List<UserRecord> simpleSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChatsRecord? chatRef;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newChatThread2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    matchSearchFocusNode?.dispose();
    matchSearchTextController?.dispose();
  }
}
