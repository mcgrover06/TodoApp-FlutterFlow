import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lgoin_widget.dart' show LgoinWidget;
import 'package:flutter/material.dart';

class LgoinModel extends FlutterFlowModel<LgoinWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Signup-email widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for signuppassword widget.
  FocusNode? signuppasswordFocusNode;
  TextEditingController? signuppasswordTextController;
  late bool signuppasswordVisibility;
  String? Function(BuildContext, String?)?
      signuppasswordTextControllerValidator;
  String? _signuppasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  String? _confirmpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for login-email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  // State field(s) for login-passsword widget.
  FocusNode? loginPassswordFocusNode;
  TextEditingController? loginPassswordTextController;
  late bool loginPassswordVisibility;
  String? Function(BuildContext, String?)?
      loginPassswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    signuppasswordVisibility = false;
    signuppasswordTextControllerValidator =
        _signuppasswordTextControllerValidator;
    confirmpasswordVisibility = false;
    confirmpasswordTextControllerValidator =
        _confirmpasswordTextControllerValidator;
    loginPassswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPassswordFocusNode?.dispose();
    loginPassswordTextController?.dispose();
  }
}
