import 'package:flutter/material.dart';

import '../core/app/constants/app_text.dart';
import '../core/app/constants/colors.dart';
import '../core/app/constants/dimensions.dart';
import '../core/app/constants/font_size.dart';
import '../core/app/constants/styles.dart';
import '../core/enums/enums.dart';
import '../presentation/widgets/custom_button_widget.dart';
import 'theme_extensions.dart';

class CustomDialogs {
  static customActionDialog({
    required BuildContext context,
    String? title,
    String? description,
    String? modelName,
    Widget? widgetBody,
    Function()? onPressedOk,
    Function()? onPressedCancel,
    bool hasOkButton = false,
    bool hasCustomDescription = false,
    bool isModelName = false,
    bool barrierDismissible = false,
    String? okBtnTxt = AppText.yes,
    String? cancelTxt = AppText.noCancel,
  }) {
    return showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        barrierColor: AppColors.kBARRIER,
        builder: (BuildContext context) {
          var bodySmallTheme = context.textTheme.bodySmall;
          return Dialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: appWidth(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              child: widgetBody ??
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        kVSizedBox1,
                        kVSizedBox0,
                        CustomText(
                          text: "$title",
                          style: bodySmallTheme?.copyWith(
                              fontSize: FontSize.kS20,
                              fontWeight: FontWeight.w500),
                        ),
                        kVSizedBox1,
                        kVSizedBox0,
                        (hasOkButton || hasCustomDescription)
                            ? CustomText(
                                text: description ?? "",
                                style: bodySmallTheme?.copyWith(
                                  fontSize: FontSize.kS15,
                                ),
                                textAlign: TextAlign.left,
                              )
                            : isModelName == true
                                ? Text.rich(
                                    TextSpan(
                                        text:
                                            "${AppText.areYouSureYouWant} $description \n",
                                        children: [
                                          TextSpan(
                                              text: "${modelName.toString()} ?",
                                              style: bodySmallTheme?.copyWith(
                                                  fontSize: FontSize.kS11,
                                                  fontWeight: FontWeight.w500))
                                        ],
                                        style: bodySmallTheme),
                                    textAlign: TextAlign.left,
                                  )
                                : CustomText(
                                    text: "${AppText.areYouSure} $description?",
                                    style: bodySmallTheme?.copyWith(
                                        fontSize: FontSize.kS15),
                                    textAlign: TextAlign.left,
                                  ),
                        kVSizedBox2,
                        Row(
                          children: [
                            if (!hasOkButton) ...[
                              Expanded(
                                child:
                                    CustomButton(buttonType: ButtonType.outline)
                                        .widget(
                                  borderColor:
                                      context.colors.tertiaryBackground!,
                                  context: context,
                                  runCode: onPressedCancel ?? () {},
                                  title: cancelTxt,
                                  backgroundColor: context.colors.white,
                                  titleColor: bodySmallTheme?.color,
                                  fontWeight: FontWeight.w500,
                                  elevation: 0,
                                ),
                              ),
                              kHSizedBox1,
                            ],
                            Expanded(
                              child: CustomButton().widget(
                                context: context,
                                runCode: onPressedOk ?? () {},
                                title: "$okBtnTxt",
                                fontWeight: FontWeight.w500,
                                elevation: 0,
                              ),
                            ),
                          ],
                        ),
                        kVSizedBox0,
                      ],
                    ),
                  ),
            ),
          );
        });
  }

  static customFullDialog({String? data, required BuildContext context}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        useSafeArea: true,
        barrierColor: AppColors.kBARRIER,
        builder: (BuildContext contex) {
          return PopScope(
            canPop: AppText.canPop,
            child: SizedBox(
              height: appHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  kVSizedBox0,
                  CustomText(
                    text: data ?? "Processing...",
                    color: AppColors.kWHITE,
                    fontSize: FontSize.kS11,
                  )
                ],
              ),
            ),
          );
        });
  }
}
