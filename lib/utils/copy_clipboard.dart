import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

copyToClipboard({required String data, required BuildContext context}) {
  return Clipboard.setData(ClipboardData(text: data)).then((value) {
    if (!context.mounted) return;
    // successToast(msg: AppText.copiedSuccessfully);
  });
}
