// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 214, 214),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png', width: 150, height: 150),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 137, 211, 147)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Text(
              'Loading...',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.height*0.03,
              ),
              ),
          ],
        ),
      ),
    );
  }
}