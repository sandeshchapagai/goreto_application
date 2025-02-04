class RegexConfig {
  static RegExp atleastOneNum() => RegExp(r'\d');

  static RegExp blockEmojis() => RegExp(
      r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])');

  //to block symbol except underscore and minus
  static bool blockSymbol(String value) =>
      !RegExp(r"^[a-zA-Z0-9_-]+$").hasMatch(value);

  static bool checkEmail(String email) => RegExp(
          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
      .hasMatch(email);

  static bool checkUrl(String url) => !RegExp("^(https?:\\/\\/)?"
          "((([A-Za-z\\d]([A-Za-z\\d-]*[A-Za-z\\d])*)\\.)+[A-Za-z]{2,}|"
          "((\\d{1,3}\\.){3}\\d{1,3}))"
          "(\\:\\d+)?(\\/[-A-Za-z\\d%_.~+]*)*"
          "(\\?[;&A-Za-z\\d%_.~+=-]*)?")
      .hasMatch(url);

  static RegExp denySpace() => RegExp(r'\s');

  static RegExp digitAndDecimalOnly() => RegExp(r'^\d+\.?\d{0,2}');

  static RegExp digitAndThreeDecimal() => RegExp(r'^\d+\.?\d{0,3}');

  static RegExp digitOnly() => RegExp(r'^[0-9]+');

  static RegExp digitWithDotOnly() => RegExp(r'^[\d\.]+');

  static RegExp digitWithSpaceOnly() => RegExp(r'^[\d\s]+');

  static RegExp digitWithSpecialSymbolOnly() =>
      RegExp(r'[0-9!@#\$%^&*()_+\-=\[\]{};":\\|,.<>\/?]+');

  static bool isOTPCodeInvalid(String otp) {
    if (otp.length != 5) {
      return true;
    }
    return false;
  }

  static bool isPhoneInvalid(String phoneNumber) {
    if (phoneNumber.length < 6 || phoneNumber.length > 20) {
      return true;
    }
    return false;
  }

  static RegExp upperCaseLetter() => RegExp(r'[A-Z]');
}
