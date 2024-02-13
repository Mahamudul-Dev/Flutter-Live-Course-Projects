import 'package:flutter/material.dart';
import 'package:local_storage_example/routes/route_pages.dart';

import 'pref/local_prefrences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalPreferences().init();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesPages.router,
    );
  }
}

