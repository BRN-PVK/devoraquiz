// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:devoraquiz/auth/main_page.dart';
import 'package:devoraquiz/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:devoraquiz/pages/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:devoraquiz/provider/google_sign_in.dart';
import 'package:scoped_model/scoped_model.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 81, 187, 136),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 81, 187, 136),
          secondary: Colors.greenAccent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
