import 'package:flutter/material.dart';

/// Returns the screen width * [fraction].
double widthFrac(BuildContext context, double fraction) =>
    MediaQuery.of(context).size.width * fraction;
