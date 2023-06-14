import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/theme.dart';
import 'package:flutter_chat_app/routes.dart';

import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        primaryColor: AppTheme.primary1,
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppTheme.neutral1, displayColor: AppTheme.neutral1),
      ),
      onGenerateRoute: AppRoutes.generateRoute,
      onGenerateInitialRoutes: (initialRoute) {
        return [
          AppRoutes.generateRoute(const RouteSettings(
            name: Routes.signup,
          ))!,
        ];
      },
    );
  }
}
