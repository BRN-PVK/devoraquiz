import 'package:flutter/material.dart';

class LipIns extends StatelessWidget {
  const LipIns({Key? key}) : super(key: key);

  static const String _title = 'Lipídeos Insaturados';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ListLipIns(),
    );
  }
}

class ListLipIns extends StatefulWidget {
  const ListLipIns({Key? key}) : super(key: key);

  @override
  State<ListLipIns> createState() => _ListLipIns();
}

class _ListLipIns extends State<ListLipIns> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Aqui ficarão as perguntas',
      style: optionStyle,
    ),
    Text(
      'Introdução do Questionário',
      style: optionStyle,
    ),
    Text(
      'Histórico',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lipídeos Insaturados',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_sharp),
            label: 'Perguntas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outlined),
            label: 'Sobre',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histórico',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
