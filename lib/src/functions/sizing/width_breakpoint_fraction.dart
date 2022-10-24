import 'package:flutter/material.dart';

/// If the screen width is more than the [lockPoint], it returns the [lockPoint]. Else, returns the screen width * [fraction].
double widthBreakpointFrac(
        BuildContext context, double fraction, double lockPoint) =>
    MediaQuery.of(context).size.width > lockPoint
        ? lockPoint
        : MediaQuery.of(context).size.width * fraction;
