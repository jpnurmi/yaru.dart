import 'package:flutter/material.dart';

class YaruPageTransitionsTheme {
  /// No page transitions (default).
  static const none = _YaruNoPageTransitionsTheme();
}

class _YaruNoPageTransitionsTheme extends PageTransitionsTheme {
  const _YaruNoPageTransitionsTheme()
      : super(
          builders: const {
            TargetPlatform.linux: _builder,
            TargetPlatform.macOS: _builder,
            TargetPlatform.windows: _builder,
          },
        );

  static const _builder = YaruNoPageTransitionsBuilder();
}

class YaruNoPageTransitionsBuilder extends PageTransitionsBuilder {
  const YaruNoPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T>? route,
    BuildContext? context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return _YaruNoPageTransitions(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      child: child,
    );
  }
}

class _YaruNoPageTransitions extends StatelessWidget {
  const _YaruNoPageTransitions({
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}
