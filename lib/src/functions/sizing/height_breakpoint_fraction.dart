import 'package:flutter/material.dart';

/// If the screen height is more than the [breakpoint], it returns the [breakpoint]. Else, returns the screen height * [fraction].
double heightBreakpointFrac(BuildContext context, double fraction, double breakpoint) =>
    MediaQuery.of(context).size.height > breakpoint ? breakpoint : MediaQuery.of(context).size.height * fraction;
