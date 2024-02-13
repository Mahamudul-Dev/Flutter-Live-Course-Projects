import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_and_navigation/pages/home_page.dart';
import 'package:routing_and_navigation/pages/login.dart';
import 'package:routing_and_navigation/pages/product_page.dart';

class Routes {
  static const home = '/';
  static const product = '/product-details';
  static const login = '/login';
}

class RouterConfiguration {
  static bool isLoggedIn = false;
  static String adminUsername = 'Mahamudul';
  static String adminPass = '123456';

  static final router = GoRouter(
    redirect: (context, state) {
      if(isLoggedIn){
        return state.fullPath;
      } else {
        return Routes.login;
      }
    },
    routes: [
      GoRoute(
          path: Routes.home,
          name: Routes.home,
          pageBuilder: (context, state) =>
              const MaterialPage(child: HomePage())),
      GoRoute(
          path: Routes.product,
          name: Routes.product,
          pageBuilder: (context, state) => MaterialPage(
                  child: ProductPage(
                object: state.extra as Map<String, String>,
              ))),
      GoRoute(
          path: Routes.login,
          name: Routes.login,
          pageBuilder: (context, state) =>
              MaterialPage(child: LoginPage()))
    ],
  );
}
