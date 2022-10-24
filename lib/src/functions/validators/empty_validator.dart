/// Ensures a passed value is not empty.
///
/// If value is not empty, returns true. Else, returns false.
bool emptyValidator(String value) {
  if (value.isEmpty) {
    return false;
  } else {
    return true;
  }
}
