import 'package:flutter/material.dart';

import '../../utils/custom_toasts.dart';
import '../app/constants/app_text.dart';

class ImagePreview {
  static navigate(
      {required String? image,
      required BuildContext context,
      final bool isNetworkImg = true,
      final bool isAssestImg = false}) {
    // if (image != null) {
    //   return RouteNavigator.navigate(
    //       context,
    //       CustomImagePreviewWidget(
    //         imgPath: image,
    //         isNetworkImg: isNetworkImg,
    //         isAssestImg: isAssestImg,
    //       ),
    //       fullScreenDialog: true);
    // }
    errorToast(msg: AppText.noResultFound);
  }
}
