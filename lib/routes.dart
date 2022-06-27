import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter kRoutes = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Scaffold(),
    ),
  ],
  errorBuilder: (context, state) => _errorPage,
);

const Widget _errorPage = Scaffold(
  body: SafeArea(
    child: Center(
      child: Text('Hatalı Sayfa'),
    ),
  ),
);
