import 'package:flutter/material.dart';

extension WindowBreakpointExtension on MediaQueryData {
  WindowBreakpoint get breakpoint => WindowBreakpoint.fromMediaQuery(this);
  VerticalWindowBreakpoint get verticalBreakpoint =>
      VerticalWindowBreakpoint.fromMediaQuery(this);
}

enum WindowBreakpoint {
  /// Phone in portrait.
  compact,

  /// Tablet in portrait.
  /// Foldable in portrait (unfolded).
  medium,

  /// Phone in landscape.
  /// Tablet in landscape.
  /// Foldable in landscape (unfolded).
  /// Desktop.
  expanded;

  const WindowBreakpoint();

  static WindowBreakpoint fromMediaQuery(MediaQueryData mediaQuery) =>
      fromSize(mediaQuery.size);

  static WindowBreakpoint of(BuildContext context) =>
      WindowBreakpoint.fromMediaQuery(MediaQuery.of(context));

  static WindowBreakpoint fromSize(Size size) {
    final width = size.width;
    if (width < 600) return compact;
    if (width > 840) return expanded;
    return medium;
  }

  bool get isMediumOrExpanded => this == medium || this == expanded;
  bool get isCompactOrMedium => this == compact || this == medium;
  bool get isMedium => this == medium;
  bool get isExpanded => this == expanded;
  bool get isCompact => this == compact;
}

enum VerticalWindowBreakpoint {
  compact,
  medium,
  expanded;

  const VerticalWindowBreakpoint();

  static VerticalWindowBreakpoint fromMediaQuery(MediaQueryData mediaQuery) =>
      fromSize(mediaQuery.size);

  static VerticalWindowBreakpoint of(BuildContext context) =>
      VerticalWindowBreakpoint.fromMediaQuery(MediaQuery.of(context));

  static VerticalWindowBreakpoint fromSize(Size size) {
    final height = size.height;
    if (height < 600) return compact;
    if (height > 840) return expanded;
    return medium;
  }

  bool get isMediumOrExpanded => this == medium || this == expanded;
  bool get isCompactOrMedium => this == compact || this == medium;
  bool get isMedium => this == medium;
  bool get isExpanded => this == expanded;
  bool get isCompact => this == compact;
}
