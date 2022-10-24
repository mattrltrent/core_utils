import 'package:flutter/material.dart';

/// Returns the screen height * [fraction].
double heightFrac(BuildContext context, double fraction) =>
    MediaQuery.of(context).size.height * fraction;
