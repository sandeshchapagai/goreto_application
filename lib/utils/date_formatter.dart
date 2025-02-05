// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class DateFormatter {
  static DateTime today = DateTime.now();

  static DateTime firstDayThisMonth = DateTime(today.year, today.month, 1);

  static DateTime yesterday = today.subtract(const Duration(days: 1));

  static DateTime firstDaylastMonth = DateTime(today.year, today.month - 1, 1);

  static DateTime lastDayLastMonth =
      DateTime(today.year, today.month).subtract(const Duration(days: 1));

  static DateTime thisWeek = today.subtract(const Duration(days: 7));

  static DateTime lastWeek = today.subtract(const Duration(days: 14));

  static DateTime lifeTime = DateTime(today.year - 10);

  static String dateFormat(
          {required DateTime? dateTime, String format = "y-MM-dd"}) =>
      DateFormat(format).format(dateTime ?? DateTime.now());

  static ({
    DateTime current,
    DateTime input,
    bool isToday,
    bool isYesterday,
    bool isCurrentMonth
  }) formattedDateDetails({required String? enteredDate}) {
    var inputDate = DateTime.parse("${enteredDate ?? today}");
    var currentDate = today;
    var inputFormatDate =
        DateTime(inputDate.year, inputDate.month, inputDate.day);
    var currentFormatDate =
        DateTime(currentDate.year, currentDate.month, currentDate.day);

    return (
      current: currentFormatDate,
      input: inputFormatDate,
      isToday: currentFormatDate == inputFormatDate,
      isYesterday: currentFormatDate.difference(inputFormatDate).inDays == 1,
      isCurrentMonth: DateTime(inputFormatDate.year, inputFormatDate.month)
          .isAtSameMomentAs(
              DateTime(currentFormatDate.year, currentFormatDate.month)),
    );
  }

  static int getBirthDayRemainingDays(String dateString) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    DateTime birthday = dateFormat.parse(dateString);
    final now = DateTime.now();
    DateTime nextBirthday = DateTime(now.year, birthday.month, birthday.day);
    if (nextBirthday.isBefore(now) || nextBirthday.isAtSameMomentAs(now)) {
      nextBirthday = DateTime(now.year + 1, birthday.month, birthday.day);
    }

    final difference = nextBirthday.difference(now).inDays;

    return difference;
  }

  static int getDaysDifference({required DateTime? date}) {
    return date?.difference(today).inDays ?? 0;
  }

  static ({DateTime? firstDate, DateTime? initialDate}) getInitialFirstDate(
      {required String date, bool isUpdate = false}) {
    var inputDate = date.isNotEmpty ? DateTime.parse(date) : null;
    var isInputDateLarger = today.difference(inputDate ?? today).isNegative;

    if (isUpdate) {
      return (
        firstDate: isInputDateLarger ? null : inputDate,
        initialDate: inputDate
      );
    }
    return (firstDate: null, initialDate: inputDate);
  }

  static String getLocalDateTimeFormat(
          {required String? dateTime, String format = "yyyy-MM-dd hh:mm a"}) =>
      DateFormat(format).format(
          DateTime.parse(dateTime ?? DateTime.now().toString()).toLocal());

  static String getLocalTimeFormat({required DateTime? dateTime}) =>
      DateFormat("h:mm a").format(dateTime?.toLocal() ?? today);

  static String getMonthYear({required String? dateTime}) =>
      DateFormat("MMMM, yyyy")
          .format(DateTime.parse("${dateTime ?? dateTime}"));

  static String getUtcIsoDateTime({required DateTime dateTime}) {
    var currentDate = dateTime;
    return DateTime(dateTime.year, dateTime.month, dateTime.day,
            currentDate.hour, currentDate.minute, currentDate.second)
        .toUtc()
        .toIso8601String();
  }

  static String timeFormat({DateTime? dateTime}) =>
      DateFormat("h:mm a").format(dateTime ?? DateTime.now());
}
