import 'package:flutter/material.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import '../core/app/constants/dimensions.dart';
import '../core/app/constants/styles.dart';
import '../presentation/widgets/custom_svg_widget.dart';

customSnackbar(
        {required BuildContext context,
        required String text,
        String? icon,
        Duration? duration,
        bool isError = false}) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: duration ?? const Duration(milliseconds: 500),
        content: Row(
          children: [
            if (icon != null) ...[
              CustomSvgWidget(
                icon: icon,
                color: context.colors.white,
                height: 20,
                width: 20,
              ),
              kHSizedBox1,
            ],
            CustomText(
              text: text,
              color: context.colors.white,
            ),
          ],
        ),
      ),
    );
