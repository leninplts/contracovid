import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:contracovid/medico/widgets/drawer_widget.dart';
import 'package:contracovid/medico/widgets/horizantal_scroll_widget.dart';
import 'package:contracovid/medico/widgets/my_pacient_widget.dart';

class GeneralPage extends StatefulWidget {
  @override
  _GeneralPageState createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Vista General',
          style: TextStyle(color: Colors.red),
        ),
      ),
      drawer: DocDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HorizontalScrollWidget(),
            MyPacientWidget(),
          ],
        ),
      ),
    );
  }
}
