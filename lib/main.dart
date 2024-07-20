import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:logos_dashboard/pages/home.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());

  runApp(const LogosDashboard());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);

class LogosDashboard extends StatelessWidget {
  const LogosDashboard({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(800, 600),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Logos - Dashboard',
          routerConfig: _router,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.lightBlue,
              brightness: Brightness.dark,
            ),
          ),
        ),
      );
}
