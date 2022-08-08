import 'package:flutter/material.dart';
import 'package:devoraquiz/questionslipsat/lipsat1.dart';

class lipsat_screen extends StatelessWidget {
  const lipsat_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LIPSAT1(), // ignore: prefer_const_constructors
    );
  }
}
