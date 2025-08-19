import 'package:flutter/material.dart';
import 'package:fun88_clone/features/home/home.dart';
import 'package:toastification/toastification.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      config: ToastificationConfig(
        maxTitleLines: 2,
        maxDescriptionLines: 6,
        marginBuilder:
            (context, alignment) => const EdgeInsets.fromLTRB(0, 16, 0, 110),
      ),
      child: MaterialApp(
        title: 'Toastification',
        builder:
            (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                Breakpoint(start: 0, end: 359, name: BreakPoints.xs.value),
                Breakpoint(start: 360, end: 479, name: BreakPoints.sm.value),
                Breakpoint(start: 480, end: 599, name: BreakPoints.md.value),
                Breakpoint(start: 600, end: 767, name: BreakPoints.lg.value),
              ],
            ),
        home: const Home(),
      ),
    );
  }
}

enum BreakPoints {
  xs("x-small"),
  sm("small"),
  md("medium"),
  lg("large");

  // The value that will be associated with each enum member
  final String value;

  // Constructor to assign the value
  const BreakPoints(this.value);
}
