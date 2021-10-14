import 'dart:math' as math;

class NumberTools{
  static double? toSpanishNumber(String string) {
    List<String> _numberChars = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '.',
      ','
    ];
    int position = 0;
    int thousandsCount = 0;
    int thousandsFound = 0;
    bool findDecimalSeparator = true;
    double number = 0;
    for (int i = string.length - 1; i >= 0; i--) {
      if (!_numberChars.contains(string[i])) {
        return null;
      }

      if (findDecimalSeparator && string[i] == ',') {
        if (thousandsFound > 0) {
          return null;
        }
        _numberChars.remove(',');
        findDecimalSeparator = false;
        number /= math.pow(10.0, position);
        position = 0;
        thousandsCount = -1;
      } else if (thousandsCount == 3) {
        if (string[i] != '.' && !findDecimalSeparator) {
          return null;
        }
        thousandsFound++;
        thousandsCount = 0;
      } else {
        number += double.parse(string[i]) * math.pow(10.0, position);
        position++;
      }
      thousandsCount++;
    }
    return double.parse(number.toStringAsFixed(2));
  }
}