import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:khanglobalapp/screens/Home/homeDashboardScreen.dart';
import 'package:khanglobalapp/screens/auth/changeNewPassword.dart';
import 'package:khanglobalapp/screens/auth/forgetPasswordScreen.dart';
import 'package:khanglobalapp/screens/auth/otpscreen.dart';
import 'package:khanglobalapp/screens/auth/signInScreen.dart';
import 'package:khanglobalapp/screens/auth/signupScreen.dart';
import 'package:khanglobalapp/splash/splashScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    Widget widgetScreen;
    switch (settings.name) {
      case Routes.splashScreen:
        widgetScreen = const SplashScreen();
        break;

      case Routes.homeScreen:
        widgetScreen = const HomeScreen();
        break;

      case Routes.signupScreen:
        widgetScreen = const SignupScreen();
        break;

      case Routes.signInScreen:
        widgetScreen = const SignInScreen();
        break;

      case Routes.forgetPasswordScreen:
        widgetScreen = const ForgetPasswordScreen();
        break;

      case Routes.oTPScreen:
        widgetScreen = const OTPScreen();
        break;

      case Routes.changeNewPassword:
        widgetScreen = const ChangeNewPassword();
        break;

      default:
        widgetScreen = const SplashScreen();
    }
    return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => widgetScreen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = const Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }

  static Widget _errorRoute() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('ERROR'),
      ),
    );
  }
}
