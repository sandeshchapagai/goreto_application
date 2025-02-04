import 'data_formatter.dart';

num convertPrice({
  required dynamic price,
  bool toPaisa = false,
}) {
  return (price != null && price != "NaN" && price != "")
      ? toPaisa
          ? (num.parse("$price") * 100).round()
          : DataFormatter.convertToNum(value: num.parse("$price") / 100)
      : 0.0;
}
