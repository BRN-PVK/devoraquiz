// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:devoraquiz/pages/quizzes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroDCNT extends StatefulWidget {
  const IntroDCNT({Key? key}) : super(key: key);

  @override
  State<IntroDCNT> createState() => _IntroDCNTState();
}

class _IntroDCNTState extends State<IntroDCNT> {
  Start() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Carboidratos()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Devora Quiz"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "DCNT's Quiz",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.teko(
                          color: Color.fromARGB(255, 81, 187, 136),
                          fontSize: 52,
                        ),
                      )
                    ],
                  ),
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2016/12/05/19/49/syringe-1884784_960_720.jpg",
                  fit: BoxFit.cover,
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.topic_outlined),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Relacionado a - ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "DCNT's, Sa??de",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.query_builder_outlined),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Dura????o -",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "10 minutos",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.description_outlined),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Descri????o - ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Aaaaaaaaaaaaaaaa",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                //* start button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: Start,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'COME??AR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
