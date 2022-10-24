/// Returns a [number] until the [limit] is reached, and then returns that [limit].
double numberUntilLimit(double number, double limit) =>
    number < limit ? number : limit;
