/// Adds a postfix to a number.
///
/// Ex: 0 -> "0th".
/// Ex: 1 -> "1st".
/// Ex: 2 -> "2nd".
/// Ex: 5 -> "5th".
String numberPostfix(int number) {
  switch (number.toString()[number.toString().length - 1]) {
    case '1':
      return 'st';
    case '2':
      return 'nd';
    case '3':
      return 'rd';
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '0':
      return 'th';
    default:
      throw UnimplementedError('Postfix not found for last digit passed.');
  }
}
