import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:contracovid/medico/pages/screens.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key, this.currIndex, this.flag}) : super(key: key);
  final int currIndex;
  bool flag;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List _screens = [
    GeneralPage(),
    PacientesListPage(),
    ConsultasProgramadas(),
    PerfilPage(),
  ];

  int currentIndex = 0;

  bool flags;

  void defineflag(bool flag1) {
    flags = flag1;
  }

  @override
  Widget build(BuildContext context) {
    (widget.flag)
        ? setState(() {
            currentIndex = widget.currIndex;
            widget.flag = false;
          })
        : null;
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: false,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Pacientes'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(
              'Citas',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
