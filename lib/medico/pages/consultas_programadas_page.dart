import 'package:flutter/material.dart';
import 'package:contracovid/medico/widgets/citas_widget.dart';
import 'package:contracovid/medico/widgets/drawer_widget.dart';

class ConsultasProgramadas extends StatefulWidget {
  @override
  _ConsultasProgramadasState createState() => _ConsultasProgramadasState();
}

class _ConsultasProgramadasState extends State<ConsultasProgramadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Citas Programadas',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      drawer: DocDrawer(),
      body: CitasWidget(),
    );
  }
}
