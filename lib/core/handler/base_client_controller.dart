import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/console.dart';
import '../../utils/custom_dialogs.dart';
import '../app/app_states/app_states.dart';
import '../error/api_exceptions.dart';
import '../routes/route_navigator.dart';

hideLoading(BuildContext context) =>
    Navigator.canPop(context) ? RouteNavigator.back(context) : null;
mixin BaseClientController {
  customApiExceptionHandleDialog(
      {required String? message, required BuildContext context}) {
    CustomDialogs.customActionDialog(
        context: context,
        hasOkButton: true,
        okBtnTxt: "Ok",
        title: "Error",
        onPressedOk: () => RouteNavigator.back(context),
        description: message);
  }

  void handleError(error) {
    BuildContext globalContext = AppStates.globalKey.currentContext!;
    if (error is! DataNotFoundException) {
      hideLoading(globalContext);
    }

    if (error is BadRequestException) {
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
    } else if (error is FetchDataException) {
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
    }else if (error is ApiNotRespondingException) {
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
    } else if (error is DataNotFoundException) {
      hideLoading(globalContext);
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
      consolelog(error.message);
    } else if (error is ConflictException) {
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
    } else if (error is ForbiddenException) {
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
    } else if (error is ValidationException) {
      customApiExceptionHandleDialog(
          message: error.message, context: globalContext);
    } else {
      CustomDialogs.customActionDialog(
          context: globalContext,
          hasOkButton: true,
          okBtnTxt: "Ok",
          title: "Error",
          onPressedOk: () => RouteNavigator.back(globalContext),
          description: 'Something went wrong, try again later');
    }
  }
}
