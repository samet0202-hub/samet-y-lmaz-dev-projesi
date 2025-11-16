import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sagmal_mobil/feature/home/page/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    
    GoRoute(
      path: '/home',
      
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      
    ),
  ],
);