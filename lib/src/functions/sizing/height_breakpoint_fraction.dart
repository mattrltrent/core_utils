import 'package:flutter/material.dart';

/// If the screen height is more than the [lockPoint], it returns the [lockPoint]. Else, returns the screen height * [fraction].
double heightBreakpointFrac(
        BuildContext context, double fraction, double lockPoint) =>
    MediaQuery.of(context).size.height > lockPoint
        ? lockPoint
        : MediaQuery.of(context).size.height * fraction;
