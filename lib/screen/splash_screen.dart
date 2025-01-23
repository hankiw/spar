import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    debugPrint('SplashScreen initState() ::');

    Timer(Duration(seconds: 3), () {
      debugPrint('end splash');
      Navigator.pushReplacementNamed(context, '/Sign');
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2B0A3D),
              Color(0xFF000000),
            ],
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text('SPAR',
                style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 60.0),
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}