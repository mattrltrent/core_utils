import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

/// Builds out 3 different widgets, dependent upon the max width of the screen.
// ignore: must_be_immutable
class ResponsiveView extends StatelessWidget {
  ResponsiveView({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
    this.tabletBreakpoint = 650,
    this.desktopBreakpoint = 900,
  }) {
    if (isNull(mobile) && isNull(tablet) && isNull(desktop)) {
      throw Exception("Mobile, Tablet, and Desktop views cannot all be null!");
    } else if (notNull(mobile) && notNull(tablet) && isNull(desktop)) {
      desktop = tablet;
    } else if (isNull(mobile) && notNull(tablet) && notNull(desktop)) {
    } else if (isNull(mobile) && notNull(tablet) && isNull(desktop)) {
      mobile = tablet;
      desktop = tablet;
    } else if (notNull(mobile) && isNull(tablet) && isNull(desktop)) {
      tablet = mobile;
      desktop = mobile;
    } else if (isNull(mobile) && isNull(tablet) && notNull(desktop)) {
      mobile = desktop;
      tablet = desktop;
    } else if (notNull(mobile) && isNull(tablet) && notNull(desktop)) {
      tablet = desktop;
    }
  }

  late Widget? mobile;
  late Widget? tablet;
  late Widget? desktop;
  final double tabletBreakpoint;
  final double desktopBreakpoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= desktopBreakpoint) {
        return desktop!;
      } else if (constraints.maxWidth >= tabletBreakpoint) {
        return tablet!;
      } else {
        return mobile!;
      }
    });
  }
}
