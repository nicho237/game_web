import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:game_web/landingpage.dart';
import 'package:game_web/wows/wowsform.dart';
import 'package:game_web/wt/warform.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/WarThunderJoin': (context) => const WarForm(),
        '/WoWSJoin': (context) => const WowsForm()
      },
      title: 'Formulir Pendaftaran',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: Typography().white,
        textTheme: GoogleFonts.merriweatherTextTheme(),
        primarySwatch: Colors.blueGrey,
      ),
      home: const LandingPage(),
    );
  }
}

