import 'package:architecture_olgoo_template_practice/features/presentation/login/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter routs =
    GoRouter(navigatorKey: navigatorKey, initialLocation: "/splash", routes: [
  GoRoute(
    path: '/login',
    name: "/login",
    builder: (context, state) => const Login(),
  ),
    ],);