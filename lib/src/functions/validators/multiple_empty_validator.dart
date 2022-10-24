/// Ensures all passed values in the list are not empty.
///
/// If values are not empty, returns true. Else, returns false.
bool multipleEmptyValidator(List<String> values) {
  for (String value in values) {
    if (value.isEmpty) return false;
  }
  return true;
}
