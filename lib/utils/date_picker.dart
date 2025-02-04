import 'package:flutter/material.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import 'material_color_convertor.dart';

class DatePicker {
  static Future<DateTime?> pickDate(
      {required BuildContext context,
      String confirmText = "Ok",
      DateTime? initialDate,
      DateTime? firstDate,
      DateTime? lastDate}) {
    return showDatePicker(
      confirmText: confirmText,
      context: context,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(2100),
    );
  }

  static Future<DateTimeRange?> pickDateRange(BuildContext context,
      {DateTimeRange? range}) {
    return showDateRangePicker(
      builder: ((context, child) => Theme(
            data: ThemeData(
                primarySwatch: convertMaterialColor(context.colors.primary!)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
              child: DateRangePickerDialog(
                  currentDate: DateTime.now(),
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                  saveText: "Save",
                  initialDateRange: range ??
                      DateTimeRange(start: DateTime.now(), end: DateTime.now()),
                  cancelText: "Cancel",
                  confirmText: "Ok",
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now()),
            ),
          )),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      saveText: "Save",
      currentDate: DateTime.now(),
      initialDateRange:
          range ?? DateTimeRange(start: DateTime.now(), end: DateTime.now()),
      cancelText: "Cancel",
      confirmText: "Ok",
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      context: context,
    );
  }

  static Future<TimeOfDay?> pickTime(
      {required BuildContext context, TimeOfDay? initialTime}) {
    var currentDate = DateTime.now();
    return showTimePicker(
      confirmText: "Ok",
      cancelText: "Cancel",
      initialEntryMode: TimePickerEntryMode.input,
      context: context,
      initialTime: initialTime ??
          TimeOfDay(hour: currentDate.hour, minute: currentDate.minute),
    );
  }
}
