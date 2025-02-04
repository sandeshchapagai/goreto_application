class GenerateUnique {
  static String id({String? suffix}) {
    return "${suffix ?? ""}${DateTime.now().millisecondsSinceEpoch}";
  }
}
