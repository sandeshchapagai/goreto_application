// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class DataFormatter {
  static num convertToDecimal({
    required dynamic value,
    bool showNegativeSymbol = true,
    bool isRoundOff = true,
  }) {
    if (value == null || value == "NaN" || value == "") return 0;

    var finalValue = (num.parse("$value").toStringAsFixed(isRoundOff ? 2 : 3));

    if (showNegativeSymbol) {
      return isRoundOff
          ? num.parse(finalValue)
          : num.parse(finalValue.substring(0, finalValue.indexOf('.') + 3));
    }
    return isRoundOff
        ? num.parse(finalValue).abs()
        : num.parse(finalValue.substring(0, finalValue.indexOf('.') + 3)).abs();
  }

  static num convertToNum(
      {required dynamic value, bool isToChangeInPaisa = false}) {
    if (value == null || "$value" == "NaN" || value == "") return 0;

    return isToChangeInPaisa
        ? (num.parse(
                (double.parse("$value") * 100).roundToDouble().toString()) /
            100)
        : num.parse("$value");
  }

  static getCompactNumber(var data) {
    var tempValue = double.parse(data.toString());
    var units = ["", "K", "M", "B", "T"];

    if (tempValue < 1000) {
      return " ${DataFormatter.convertToDecimal(value: tempValue, showNegativeSymbol: true)}";
    }
    var unitIndex = 0;
    while (tempValue >= 1000) {
      tempValue /= 1000;
      unitIndex++;
    }
    if (unitIndex > 4) {
      unitIndex = 4;
    }
    return " ${DataFormatter.convertToDecimal(value: tempValue, showNegativeSymbol: false)}${unitIndex > 0 ? units[unitIndex] : ""}";
  }

  static getDecoratedNumberFormat(var data) {
    return NumberFormat("#,###.##").format(data);
  }

  static getlongNumber(var data) {
    return NumberFormat().format(data);
  }
}
