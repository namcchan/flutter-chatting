import 'package:flutter/material.dart';
import 'screens/authentication/login_screen.dart';
import 'screens/chat/chat_detail_screen.dart';
import 'screens/app_screen.dart';
import 'constants/routes.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.App:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.App),
          builder: (context) {
            return const AppScreen();
          },
        );
      case Routes.login:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.login),
          builder: (context) {
            return const LoginScreen();
          },
        );
      case Routes.chatInfo:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.chatInfo),
          builder: (context) {
            return const ChatDetailScreen();
          },
        );
      default:
        return null;
    }
  }
}

Route routeToSignInPage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return const LoginScreen();
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(-1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
