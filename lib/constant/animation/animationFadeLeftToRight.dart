import 'package:flutter/material.dart';

PageRouteBuilder transitionToPage(Widget targetPage,
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
      var begin = const Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: animation.drive(tween),
          child: child,
        ),
      );
    },
  );
}
