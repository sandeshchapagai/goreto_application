extension BoolParserExtension on String {
  bool toBool() => bool.parse(this);
}

extension IntParserExtension on String {
  num toNum() => num.parse("${isEmpty ? 0 : this}");
}
