import 'package:flutter/material.dart';

/// A widget that adds a fading gradient overlay to the top and bottom
/// of a scrollable child widget. This creates a visually appealing
/// effect where content appears to fade in and out at the edges.
class GradientListView extends StatelessWidget {
  /// The scrollable widget over which the gradient will be applied.
  /// This could be a ListView, GridView, SingleChildScrollView, etc.
  final Widget child;

  /// The list of colors to use for the linear gradient.
  /// Defaults to a gradient from white to transparent to white.
  final List<Color> gradientColors;

  /// The list of stop points for the gradient colors.
  /// Each stop should be a value between 0.0 and 1.0.
  /// Defaults to [0.0, 0.1, 0.9, 1.0] for top and bottom fades.
  final List<double>? gradientStops;

  /// The alignment of the beginning of the gradient.
  /// Defaults to [Alignment.topCenter].
  final AlignmentGeometry gradientBegin;

  /// The alignment of the end of the gradient.
  /// Defaults to [Alignment.bottomCenter].
  final AlignmentGeometry gradientEnd;

  /// The height of the gradient overlay. If null, the gradient will fill the available height.
  /// You can use this to control the fade area precisely.
  final double? gradientHeight;

  /// Controls whether the gradient overlay itself should ignore pointer events.
  /// Setting this to true (default) allows touches to pass through to the
  /// underlying [child] widget. Set to false if the gradient itself should
  /// capture pointer events (uncommon for this use case).
  final bool ignorePointer;

  /// Creates a [GradientListView] with customizable gradient properties.
  const GradientListView({
    super.key,
    required this.child,
    this.gradientColors = const [
      Colors.white,
      Colors.white10,
      Colors.transparent,
      Colors.white10,
      Colors.white,
    ],
    this.gradientStops = const [0.0, 0.05, 0.5, 0.95, 1.0],
    this.gradientBegin = Alignment.topCenter,
    this.gradientEnd = Alignment.bottomCenter,
    this.gradientHeight,
    this.ignorePointer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // The scrollable child widget, which is the main content.
        child,
        // The gradient overlay that creates the fade effect.
        // IgnorePointer ensures that interactions with the list below are not blocked.
        IgnorePointer(
          ignoring: ignorePointer, // Allow or disallow pointer events
          child: Container(
            height: gradientHeight, // Apply custom height if provided
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: gradientBegin,
                end: gradientEnd,
                stops: gradientStops,
                colors: gradientColors,
              ),
            ),
            // Clip the content to ensure the gradient respects its bounds
            // and doesn't paint outside its parent's area.
            clipBehavior: Clip.hardEdge,
          ),
        ),
      ],
    );
  }
}
