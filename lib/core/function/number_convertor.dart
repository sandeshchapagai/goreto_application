class NumberConvertor {
  static final List<String> _belowTwenty = [
    '',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen'
  ];

  static final List<String> _tens = [
    '',
    '',
    'Twenty',
    'Thirty',
    'Forty',
    'Fifty',
    'Sixty',
    'Seventy',
    'Eighty',
    'Ninety'
  ];

  static final List<String> _thousands = [
    '',
    'Thousand',
    'Million',
    'Billion',
    'Trillion'
  ];

  static String inifinity({required num number}) {
    if (number.isNegative) return "\u221E";
    return "$number";
  }

  static String toWords({required num number, required String currency}) {
    if ("$number" == "NaN" || "$number" == "" || number == 0) return 'zero';

    // Split the integer and decimal parts
    int integerPart = number.floor();
    int decimalPart = ((number - integerPart) * 100).round();

    String words = _convertInteger(integerPart);

    if (decimalPart > 0) {
      words += ' And $decimalPart/100';
    }

    return "${words.trim()} $currency Only";
  }

  static String _convertBelowThousand(int number) {
    if (number == 0) return '';
    if (number < 20) return _belowTwenty[number];

    String words = '';

    if (number >= 100) {
      words += '${_belowTwenty[number ~/ 100]} Hundred ';
      number %= 100;
    }

    if (number >= 20) {
      words += _tens[number ~/ 10];
      if (number % 10 > 0) {
        words += '-${_belowTwenty[number % 10]}';
      }
    } else if (number > 0) {
      words += _belowTwenty[number];
    }

    return words.trim();
  }

  static String _convertInteger(int number) {
    if (number == 0) return '';
    if (number < 0) return 'minus ${_convertInteger(-number)}';

    String words = '';
    int place = 0;

    while (number > 0) {
      int chunk = number % 1000;
      if (chunk > 0) {
        words = '${_convertBelowThousand(chunk)} ${_thousands[place]} $words'
            .trim();
      }
      number ~/= 1000;
      place++;
    }

    return words;
  }
}
