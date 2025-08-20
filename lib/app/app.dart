import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88_clone/app/router/app_router.dart';
import 'package:fun88_clone/app/theme/app_themes.dart';
import 'package:fun88_clone/features/login/domain/cubit/login_cubit.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Fun88',
        theme: AppThemes.lightTheme,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
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
      ),
    );
  }
}

enum BreakPoints {
  xs("x-small"),
  sm("small"),
  md("medium"),
  lg("large");

  final String value;
  const BreakPoints(this.value);
}
