import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_web/firebase_options.dart';
import 'package:game_web/landingpage.dart';
import 'package:game_web/wows/wowsform.dart';
import 'package:game_web/wt/warform.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            return const LandingPage();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      )
    );
  }
}
