import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:logos_dashboard/pages/home.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());

  WidgetsFlutterBinding.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = const [];
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'GB'),
      ],
      fallbackLocale: const Locale('en', 'GB'),
      path: 'assets/localisations',
      child: const ScreenUtilInit(
        designSize: Size(800, 600),
        minTextAdapt: true,
        splitScreenMode: true,
        child: LogosDashboard(),
      ),
    ),
  );
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
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        // We do not localise here because we're at the root of where
        // localisation is provided to the context, meaning `context.tr()` will
        // not work.
        title: 'Logos Dashboard',
        routerConfig: _router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue,
            brightness: Brightness.dark,
          ),
        ),
      );
}
