/// Returns true if the number argument is plural, and false if it isn't.
///
/// Ex: 1 -> false.
/// Ex: 0 -> true.
/// Ex: 191232 -> true.
bool isPlural(int number) => number == 1 ? false : true;
