import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const LogosDashboard());

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LogosDashboard(),
    ),
  ],
);

class LogosDashboard extends StatelessWidget {
  const LogosDashboard({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
      title: 'Logos - Dashboard',
      routerConfig: _router,
    );
}

