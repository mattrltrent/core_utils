import 'package:flutter/material.dart';

/// If the screen width is more than the [breakpoint], it returns the [breakpoint]. Else, returns the screen width * [fraction].
double widthBreakpointFrac(BuildContext context, double fraction, double breakpoint) =>
    MediaQuery.of(context).size.width > breakpoint ? breakpoint : MediaQuery.of(context).size.width * fraction;
