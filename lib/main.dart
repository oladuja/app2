import 'package:app2/app/screens/sign_up.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 2',
      debugShowCheckedModeBanner: false,
      // home: SignUp(),
      home: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        duration: const Duration(seconds: 3),
        childWidget: const Center(
          child: Text(
            'logo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: const SignUp(),
      ),
    );
  }
}
