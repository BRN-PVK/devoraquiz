import 'package:flutter/material.dart';

class Carbos extends StatelessWidget {
  const Carbos({Key? key}) : super(key: key);

  static const String _title = 'Carboidratos';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ListCarb(),
    );
  }
}

class ListCarb extends StatefulWidget {
  const ListCarb({Key? key}) : super(key: key);

  @override
  State<ListCarb> createState() => _ListCarb();
}

class _ListCarb extends State<ListCarb> {
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
          'Carboidratos',
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
