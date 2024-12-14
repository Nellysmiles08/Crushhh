import '/chat_groupwbubbles/chat_thread_component_1/chat_thread_component1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat2_details1_widget.dart' show Chat2Details1Widget;
import 'package:flutter/material.dart';

class Chat2Details1Model extends FlutterFlowModel<Chat2Details1Widget> {
  ///  Local state fields for this page.

  List<String> uploadedImages = [];
  void addToUploadedImages(String item) => uploadedImages.add(item);
  void removeFromUploadedImages(String item) => uploadedImages.remove(item);
  void removeAtIndexFromUploadedImages(int index) =>
      uploadedImages.removeAt(index);
  void insertAtIndexInUploadedImages(int index, String item) =>
      uploadedImages.insert(index, item);
  void updateUploadedImagesAtIndex(int index, Function(String) updateFn) =>
      uploadedImages[index] = updateFn(uploadedImages[index]);

  List<DocumentReference> lastMessageSeenBy = [];
  void addToLastMessageSeenBy(DocumentReference item) =>
      lastMessageSeenBy.add(item);
  void removeFromLastMessageSeenBy(DocumentReference item) =>
      lastMessageSeenBy.remove(item);
  void removeAtIndexFromLastMessageSeenBy(int index) =>
      lastMessageSeenBy.removeAt(index);
  void insertAtIndexInLastMessageSeenBy(int index, DocumentReference item) =>
      lastMessageSeenBy.insert(index, item);
  void updateLastMessageSeenByAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lastMessageSeenBy[index] = updateFn(lastMessageSeenBy[index]);

  ///  State fields for stateful widgets in this page.

  // Model for chat_ThreadComponent_1 component.
  late ChatThreadComponent1Model chatThreadComponent1Model;

  @override
  void initState(BuildContext context) {
    chatThreadComponent1Model =
        createModel(context, () => ChatThreadComponent1Model());
  }

  @override
  void dispose() {
    chatThreadComponent1Model.dispose();
  }
}
