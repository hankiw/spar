import 'package:flutter/material.dart';
import 'package:spar/screen/home_screen.dart';
import 'package:spar/screen/main_frame_screen.dart';
import 'package:spar/screen/sign_up_screen.dart';
import 'package:spar/screen/sign_screen.dart';
import 'package:spar/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPAR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: '/MainFrame',
      routes: {
        '/Splash': (context) => const SplashScreen(),
        '/Sign': (context) => SignScreen(),
				'/SignUp': (context) => SignUpScreen(),
        '/MainFrame': (context) => MainFrameScreen(),
      },
      // home: HomeScreen(),
    );
  }
}
