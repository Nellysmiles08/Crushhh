import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Home widget.
  List<ChatsRecord>? totalChatsHome;
  // Stores action output result for [Firestore Query - Query a collection] action in Home widget.
  List<ChatsRecord>? readChatsHome;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for usernameSearch widget.
  FocusNode? usernameSearchFocusNode;
  TextEditingController? usernameSearchTextController;
  String? Function(BuildContext, String?)?
      usernameSearchTextControllerValidator;
  List<UserRecord> simpleSearchResults1 = [];
  // State field(s) for snapchatUsernameSearch widget.
  FocusNode? snapchatUsernameSearchFocusNode;
  TextEditingController? snapchatUsernameSearchTextController;
  String? Function(BuildContext, String?)?
      snapchatUsernameSearchTextControllerValidator;
  List<UserRecord> simpleSearchResults2 = [];
  // State field(s) for instagramUsername widget.
  FocusNode? instagramUsernameFocusNode;
  TextEditingController? instagramUsernameTextController;
  String? Function(BuildContext, String?)?
      instagramUsernameTextControllerValidator;
  List<UserRecord> simpleSearchResults3 = [];
  // State field(s) for numberSearch widget.
  FocusNode? numberSearchFocusNode;
  TextEditingController? numberSearchTextController;
  String? Function(BuildContext, String?)? numberSearchTextControllerValidator;
  List<UserRecord> simpleSearchResults4 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    usernameSearchFocusNode?.dispose();
    usernameSearchTextController?.dispose();

    snapchatUsernameSearchFocusNode?.dispose();
    snapchatUsernameSearchTextController?.dispose();

    instagramUsernameFocusNode?.dispose();
    instagramUsernameTextController?.dispose();

    numberSearchFocusNode?.dispose();
    numberSearchTextController?.dispose();
  }
}
