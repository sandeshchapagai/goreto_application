import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goreto_app/utils/theme_extensions.dart';
import '../core/app/constants/colors.dart';

SystemUiOverlayStyle appSystemUiOverlayStyle({required BuildContext context}) =>
    SystemUiOverlayStyle(
        statusBarColor: AppColors.kTRANSPARENT,
        statusBarIconBrightness:
            context.isDarkMode ? Brightness.light : Brightness.dark);
