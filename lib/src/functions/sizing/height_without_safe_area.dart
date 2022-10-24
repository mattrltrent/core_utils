import 'package:flutter/material.dart';

/// Returns the screen height without top bottom and top safe areas (or a mix of the two).
double heightWithoutSafeArea(BuildContext context,
    {bool withoutTopSafeArea = true, bool withoutBottomSafeArea = true}) {
  return MediaQuery.of(context).size.height -
      (withoutTopSafeArea ? MediaQuery.of(context).padding.top : 0) -
      (withoutBottomSafeArea ? MediaQuery.of(context).padding.bottom : 0);
}
