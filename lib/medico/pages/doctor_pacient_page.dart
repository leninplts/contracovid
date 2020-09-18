import 'package:flutter/material.dart';

String dropdownValue = 'Caso leve';
String dropdownValue2 = 'Hipertension arterial';

class TabbedAppBarDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
            title: const Text('Lenin Jose Mamani Huaylla'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Container(
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
          /*floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: Text('Nueva consulta'),
            icon: Icon(Icons.navigation),
            backgroundColor: Colors.pink,
          ),*/
        ),
      ),
    );
  }
}

class Choice {
  final int id;
  final String title;
  final IconData icon;
  const Choice({this.id, this.title, this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(id: 1, title: 'Anamnesis', icon: Icons.person),
  Choice(id: 2, title: 'Diagnóstico', icon: Icons.book),
  Choice(id: 3, title: 'Plan terapéutico', icon: Icons.healing),
  Choice(id: 4, title: 'Recetas emitidas', icon: Icons.receipt),
  Choice(id: 5, title: 'Chatbot', icon: Icons.chat),
];

/*class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState(){
    return _ChoicePageState();
  }
}*/

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new InkWell(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              /*Icon(
                choice.icon,
                size: 150.0,
                color: textStyle.color,
              ),
              Text(
                choice.title,
                style: textStyle
              ),*/
              if (choice.id == 1)
                Container(
                  //padding: const EdgeInsets.all(20),
                  height: (MediaQuery.of(context).size.height) -
                      (kToolbarHeight * 3),
                  width: (MediaQuery.of(context).size.width),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      //Expanded(
                                      Text(
                                        'EDAD: ',
                                        //textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.deepPurpleAccent[100],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '21 years',
                                        //textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.deepPurpleAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      //Expanded(
                                      Text(
                                        'SEXO: ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.deepPurpleAccent[100],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Masculino',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.deepPurpleAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  //Row(
                                  //children: <Widget>[
                                  //Expanded(
                                  Text(
                                    'PROCEDENCIA:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent[100],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 20.0)),
                                  Text(
                                    'Puno',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //),
                                  //],
                                  //),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  //Row(
                                  //children: <Widget>[
                                  //Expanded(
                                  Text(
                                    'TRABAJO ACTUAL:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurpleAccent[100],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 20.0)),
                                  Text(
                                    'Transporte',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //),
                                  //],
                                  //),
                                ],
                              ),
                            ),
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.all(5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  //Row(
                                  //children: <Widget>[
                                  //Expanded(
                                  Text(
                                    'ENFERMEDAD ACTUAL:',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent[100],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 20.0)),
                                  Text(
                                    'Obesidad',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //),
                                  //],
                                  //),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: <Widget>[
                                  //Row(
                                  //children: <Widget>[
                                  //Expanded(
                                  Text(
                                    'MEDICACION HABITUAL:',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurpleAccent[100],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 20.0)),
                                  Text(
                                    'Ninguno',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //),
                                  //],
                                  //),
                                ],
                              ),
                            ),
                          ],
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[100],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Contacto con paciente Covid-19 o caso sospechoso?',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  new Text(
                                    'Si',
                                    style: new TextStyle(
                                        color: Colors.red,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[100],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'INICIO DE SINTOMAS: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  new Text(
                                    'Hace 4 dias',
                                    style: new TextStyle(
                                        color: Colors.red,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[100],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'REACCION ALERGICA:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Padding(padding: EdgeInsets.only(top: 30.0)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Text(
                                    'Medicamentos: ',
                                    //textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Text(
                                    'Si',
                                    //textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Text(
                                    'Ivermectina',
                                    //textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              new Padding(padding: EdgeInsets.only(top: 30.0)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Text(
                                    'Alimentos: ',
                                    //textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  new Text(
                                    'No',
                                    //textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 10.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[100],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'FECHA DE REGISTRO: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  new Text(
                                    '21/08/2020 10:45:06',
                                    style: new TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (choice.id == 2)
                Container(
                  padding: const EdgeInsets.all(20),
                  height: (MediaQuery.of(context).size.height) -
                      (kToolbarHeight * 3),
                  width: (MediaQuery.of(context).size.width),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'COVID-19: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  new DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.arrow_downward),
                                    iconSize: 24,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    onChanged: (String newValue) {
                                      //setState(() {
                                      dropdownValue = newValue;
                                      //});
                                    },
                                    items: <String>[
                                      'Caso leve',
                                      'Caso moderado',
                                      'Caso severo'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 30.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            children: <Widget>[
                              new Text(
                                'CONSULTA',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              new Padding(padding: EdgeInsets.only(top: 20)),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Programada en: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '2 dias',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 30.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'FACTOR DE RIESGO: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  new DropdownButton<String>(
                                    value: dropdownValue2,
                                    icon: Icon(Icons.arrow_downward),
                                    iconSize: 24,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    onChanged: (String newValue) {
                                      //setState(() {
                                      dropdownValue2 = newValue;
                                      //});
                                    },
                                    items: <String>[
                                      'Hipertension arterial',
                                      'Enfermedad cardiovascular',
                                      'Diabetes',
                                      'Obesidad',
                                      'Asma',
                                      'Enfermedad pulmonar cronica',
                                      'Insuficiencia renal cronica',
                                      'Enfermedad inmunodepresora',
                                      'Otro:'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (choice.id == 3)
                Container(
                  //padding: const EdgeInsets.all(20),
                  height: (MediaQuery.of(context).size.height) -
                      (kToolbarHeight * 3),
                  width: (MediaQuery.of(context).size.width),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Lenin Jose Mamani Huaylla',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 15,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 30.0)),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            children: <Widget>[
                              new Text(
                                'INDICACIONES: ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Se indica tratamiento: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        //labelText: "Dni",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          borderSide: new BorderSide(),
                                        ),
                                      ),
                                      /*validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Tiene que rellenar este campo';
                                      }
                                      return null;
                                    },*/
                                      //controller: secondTriajeScreen_Dni,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Requiere evaluación presencial: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        //labelText: "Dni",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          borderSide: new BorderSide(),
                                        ),
                                      ),
                                      /*validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Tiene que rellenar este campo';
                                      }
                                      return null;
                                    },*/
                                      //controller: secondTriajeScreen_Dni,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Se solicita exámenes auxiliares: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        //labelText: "Dni",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          borderSide: new BorderSide(),
                                        ),
                                      ),
                                      /*validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Tiene que rellenar este campo';
                                      }
                                      return null;
                                    },*/
                                      //controller: secondTriajeScreen_Dni,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Requiere atención por emergencia: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        //labelText: "Dni",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          borderSide: new BorderSide(),
                                        ),
                                      ),
                                      /*validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Tiene que rellenar este campo';
                                      }
                                      return null;
                                    },*/
                                      //controller: secondTriajeScreen_Dni,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 30)),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'CITA CONTROL: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'en 2 días',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 30)),
                              RaisedButton(
                                elevation: 5.0,
                                color: Colors.yellow,
                                onPressed: () {
                                  /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SecondTriajeScreen()),
                                );*/
                                },
                                child: Text(
                                  'Dar de alta',
                                  style: new TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (choice.id == 4)
                Container(
                  padding: const EdgeInsets.all(20),
                  height: (MediaQuery.of(context).size.height) -
                      (kToolbarHeight * 3),
                  width: (MediaQuery.of(context).size.width),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    'Lenin Jose Mamani Huaylla',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 15,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (choice.id == 5)
                Container(
                  padding: const EdgeInsets.all(20),
                  height: (MediaQuery.of(context).size.height) -
                      (kToolbarHeight * 3),
                  width: (MediaQuery.of(context).size.width),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    'Lenin Jose Mamani Huaylla',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 15,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        //),
      ),
    );
  }
}
