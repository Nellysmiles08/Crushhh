import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for snapchatUsername widget.
  FocusNode? snapchatUsernameFocusNode;
  TextEditingController? snapchatUsernameTextController;
  String? Function(BuildContext, String?)?
      snapchatUsernameTextControllerValidator;
  // State field(s) for instagramUsername widget.
  FocusNode? instagramUsernameFocusNode;
  TextEditingController? instagramUsernameTextController;
  String? Function(BuildContext, String?)?
      instagramUsernameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for schoolField widget.
  final schoolFieldKey = GlobalKey();
  FocusNode? schoolFieldFocusNode;
  TextEditingController? schoolFieldTextController;
  String? schoolFieldSelectedOption;
  String? Function(BuildContext, String?)? schoolFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    snapchatUsernameFocusNode?.dispose();
    snapchatUsernameTextController?.dispose();

    instagramUsernameFocusNode?.dispose();
    instagramUsernameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    schoolFieldFocusNode?.dispose();
  }
}
