import 'package:flutter/material.dart';

/// Returns a [SizedBox] with height that's equivalent to 2x (by default) the bottom safe area.
///
/// Useful for putting at the bottom of a long list, in order to ensure that
/// when it's scrolling its children extend over the full screen, however, when at the end, it pushes
/// its children up by 2x the bottom safe area to ensure none of the device's unsafe area cuts them off
/// at the bottom.
class SimulatedBottomSafeArea extends StatelessWidget {
  const SimulatedBottomSafeArea({super.key, this.heightMultiplier = 2});

  /// Multiplier for the simulated bottom safe area.
  final double heightMultiplier;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).padding.bottom * heightMultiplier);
  }
}
