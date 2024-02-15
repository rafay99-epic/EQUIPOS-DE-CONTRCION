import 'package:flutter/material.dart';

PageRouteBuilder transitionToPageFade(Widget targetPage,
    {int? durationMillis, int? durationSeconds}) {
  assert(durationMillis == null || durationSeconds == null,
      'Provide either duration in milliseconds or seconds, not both.');

  int duration = durationMillis ?? (durationSeconds ?? 0) * 1000;

  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => targetPage,
    transitionDuration: Duration(
      milliseconds: duration,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
