import 'dart:async';
import 'package:flutter/material.dart';
import 'package:contracovid/user/screens/screens.dart';
import 'package:flutter/services.dart' show TextInputFormatter;
import 'package:intl/intl.dart' show DateFormat;
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

int valor;
bool flag;

//SECOND SCREEN VARIABLES
int secondTSgroup = 1;
final secondTriajeScreen_Dni = TextEditingController();
final secondTriajeScreen_Age = TextEditingController();
//THIRD SCREEN VARIABLES
int dropdownValueRegion = 1;
int dropdownValueProvincia = 1;
int dropdownValueDistrito = 1;
final thirdTriajeScreen_Region = TextEditingController();
final thirdTriajeScreen_Province = TextEditingController();
final thirdTriajeScreen_District = TextEditingController();
final thirdTriajeScreen_Place = TextEditingController();
//FOURTH SCREEN VARIABLES
final fourthTriajeScreen_Work = TextEditingController();
//FIFTH SCREEN VARIABLES
final fifthTriajeScreen_Weight = TextEditingController();
final fifthTriajeScreen_Size = TextEditingController();
//SIXTH SCREEN VARIABLES
final sixthTriajeScreen_Respirations = TextEditingController();
//SEVENTH SCREEN VARIABLES
int group7 = 1;
//EIGTH SCREEN VARIABLES
int group8 = 1;
final eigthTriajeScreen_Disease = TextEditingController();
//NINETH SCREEN VARIABLES
final ninethTriajeScreen_Medicine = TextEditingController();
int group9 = 1;
//TENTH SCREEN VARIABLES
int group10 = 1;
//ELEVENTH SCREEN VARIABLES
int group11 = 1;
final eleventhTriajeScreen_Medication = TextEditingController();
//TWELVE SCREEN VARIABLES
int group12 = 1;
final twelvethTriajeScreen_Mecanism = TextEditingController();
//THIRTEENTH SCREEN VARIABLES
int group13 = 1;
//FOURTEENTG SCREEN VARIABLES
bool _checked1 = false;
bool _checked2 = false;
bool _checked3 = false;
bool _checked4 = false;
bool _checked5 = false;
bool _checked6 = false;
bool _checked7 = false;
bool _checked8 = false;
final fourteenthTriajeScreen_TosDate = TextEditingController();
final fourteenthTriajeScreen_MialgiaDate = TextEditingController();
final fourteenthTriajeScreen_Others = TextEditingController();
//CIRCUIT 1 SECOND SCREEN
int groupcircuit1_1 = 1;
int groupcircuit1_2 = 1;
int groupcircuit1_3 = 1;
int groupcircuit1_4 = 1;
int groupcircuit1_5 = 1;
int groupcircuit1_6 = 1;
final firstCircuitTriajeScreen_People = TextEditingController();
//CIRCUIT 2 FIRST SCREEN
final circuit2FirstScreen_Phone = TextEditingController();

class FirstTriajeScreen extends StatefulWidget {
  @override
  _FirstTriajeScreenState createState() {
    return _FirstTriajeScreenState();
  }
}

class _FirstTriajeScreenState extends State<FirstTriajeScreen> {
  final _formKeyTriaje1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurpleAccent[100],
        child: Form(
            key: _formKeyTriaje1,
            child: Container(
              height: (MediaQuery.of(context).size.height),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(10.0),
              //child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.only(top: 40.0)),
                  new Text(
                    'Verificador de síntomas en línea',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  new Padding(padding: EdgeInsets.only(top: 60.0)),
                  new Text(
                    'Háblenos de Ud. o de la persona por la que pregunta',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  new Padding(padding: EdgeInsets.only(top: 30.0)),
                  new Text(
                    'Le haremos algunas preguntas para comprobar si podría ser coronavirus y le diremos qué hacer a continuación.',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: RaisedButton(
                          elevation: 5.0,
                          color: Colors.yellow,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondTriajeScreen()),
                            );
                          },
                          child: Text(
                            'Empezar ahora',
                            style: new TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                    /*new Text('Registrese',
                        style: new TextStyle(color: Colors.blue, fontSize: 15.0),
                      ),*/
                  ),
                  new Padding(padding: EdgeInsets.only(top: 20.0)),
                  Flexible(
                    //padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/medico.png',
                            width: 200,
                            height: 200,
                            //fit: BoxFit.contain,
                          ),
                        ]),
                  ),
                ],
              ),
              //),
            )));
  }
}

class SecondTriajeScreen extends StatefulWidget {
  @override
  _SecondTriajeScreenState createState() {
    return _SecondTriajeScreenState();
  }
}

class _SecondTriajeScreenState extends State<SecondTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje2 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje2,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 50,
                  right: 10,
                  bottom: 10,
                ),
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Cuál es su número de DNI?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Dni",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: secondTriajeScreen_Dni,
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        'Sexo:',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: secondTSgroup,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                secondTSgroup = T;
                              });
                            },
                          ),
                          new Text(
                            'Masculino',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: secondTSgroup,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                secondTSgroup = T;
                              });
                            },
                          ),
                          new Text(
                            'Femenino',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: _animation.value),
                          new Text(
                            'Edad:',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          new Padding(padding: EdgeInsets.only(left: 20.0)),
                          Container(
                            width: 100,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Ej. 21",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Obligatorio';
                                }
                                return null;
                              },
                              controller: secondTriajeScreen_Age,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje2.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThirdTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class ThirdTriajeScreen extends StatefulWidget {
  @override
  _ThirdTriajeScreenState createState() {
    return _ThirdTriajeScreenState();
  }
}

class _ThirdTriajeScreenState extends State<ThirdTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje3 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje3,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 40,
                  right: 20,
                  bottom: 20,
                ),
                //margin: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      /*new Padding(padding: EdgeInsets.only(top: 50.0)),
                    new Text('Paso 3:',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.red, 
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                    ),*/
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Cuál es su dirección actual?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        'Necesitamos saber dónde se encuentra para poder encontrar servicios que lo ayuden.  ',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'REGION: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          new DropdownButton(
                            value: dropdownValueRegion,
                            items: [
                              DropdownMenuItem(
                                child: Text("First Region"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Second Region"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Third Region"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Fourth Region"),
                                value: 4,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropdownValueRegion = value;
                              });
                            },
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'PROVINCIA: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          new DropdownButton(
                            value: dropdownValueProvincia,
                            items: [
                              DropdownMenuItem(
                                child: Text("First Province"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Second Province"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Third Province"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Fourth Province"),
                                value: 4,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropdownValueProvincia = value;
                              });
                            },
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'DISTRITO: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          new DropdownButton(
                            value: dropdownValueDistrito,
                            items: [
                              DropdownMenuItem(
                                child: Text("First Distrito"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Second Distrito"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Third Distrito"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Fourth Distrito"),
                                value: 4,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropdownValueDistrito = value;
                              });
                            },
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Dirección",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: thirdTriajeScreen_Place,
                      ),
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      RaisedButton(
                        elevation: 5.0,
                        color: Colors.black,
                        onPressed: () {
                          /*if (_formKeyTriaje3.currentState.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FourthTriajeScreen()),
                              );
                            }*/
                        },
                        child: Text(
                          'Utilizar ubicación actual',
                          style: new TextStyle(color: Colors.yellow),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje3.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FourthTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class FourthTriajeScreen extends StatefulWidget {
  @override
  _FourthTriajeScreenState createState() {
    return _FourthTriajeScreenState();
  }
}

class _FourthTriajeScreenState extends State<FourthTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje4 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje4,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 40,
                  right: 20,
                  bottom: 20,
                ),
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 100.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿En qué trabaja usted?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        '¿A qué se dedica? ¿Cuál es su trabajo u oficio?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Oficio actual",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: fourthTriajeScreen_Work,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje4.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FifthTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class FifthTriajeScreen extends StatefulWidget {
  @override
  _FifthTriajeScreenState createState() {
    return _FifthTriajeScreenState();
  }
}

class _FifthTriajeScreenState extends State<FifthTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje4 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje4,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 40,
                  right: 20,
                  bottom: 20,
                ),
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 100.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Cuál es su peso (kg) y talla (cm)?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Peso",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: fifthTriajeScreen_Weight,
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Talla",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: fifthTriajeScreen_Size,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje4.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SixthTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class SixthTriajeScreen extends StatefulWidget {
  @override
  _SixthTriajeScreenState createState() {
    return _SixthTriajeScreenState();
  }
}

class _SixthTriajeScreenState extends State<SixthTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje4 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje4,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 40,
                  right: 20,
                  bottom: 20,
                ),
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 100.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Cuántas veces respira en un minuto?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        'Controle con un cronómetro su número de respiraciones en 60 segundos',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Respiraciones",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: sixthTriajeScreen_Respirations,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje4.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SeventhTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class SeventhTriajeScreen extends StatefulWidget {
  @override
  _SeventhTriajeScreenState createState() {
    return _SeventhTriajeScreenState();
  }
}

class _SeventhTriajeScreenState extends State<SeventhTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje6 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      //resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje6,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Te encuentras gestando o has dado a luz en los últimos dos meses?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: group7,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group7 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: group7,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group7 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje6.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EigthTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class EigthTriajeScreen extends StatefulWidget {
  @override
  _EigthTriajeScreenState createState() {
    return _EigthTriajeScreenState();
  }
}

class _EigthTriajeScreenState extends State<EigthTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje6 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      //resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje6,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 70.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Usted sufre de alguna enfermedad?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: group8,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group8 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: group8,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group8 = T;
                              });
                              eigthTriajeScreen_Disease.text = '';
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      if (group8 == 1)
                        new Text(
                          'En caso de que su respuesta fue afirmativa, especifique cuál.',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      if (group8 == 1)
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                      if (group8 == 1)
                        TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enfermedad",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Tiene que rellenar este campo';
                            }
                            return null;
                          },
                          controller: eigthTriajeScreen_Disease,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje6.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NinethTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class NinethTriajeScreen extends StatefulWidget {
  @override
  _NinethTriajeScreenState createState() {
    return _NinethTriajeScreenState();
  }
}

class _NinethTriajeScreenState extends State<NinethTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje6 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      //resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje6,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Es alérgico a algún medicamento o alimento?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: group9,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group9 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: group9,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group9 = T;
                              });
                              ninethTriajeScreen_Medicine.text = '';
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      if (group9 == 1)
                        new Text(
                          'En caso de que su respuesta fue afirmativa, especifique cuál.',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      if (group9 == 1)
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                      if (group9 == 1)
                        TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Medicamento",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Tiene que rellenar este campo';
                            }
                            return null;
                          },
                          controller: ninethTriajeScreen_Medicine,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje6.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TenthTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class TenthTriajeScreen extends StatefulWidget {
  @override
  _TenthTriajeScreenState createState() {
    return _TenthTriajeScreenState();
  }
}

class _TenthTriajeScreenState extends State<TenthTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje6 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      //resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje6,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                //padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Ud. consume alcohol, tabaco o drogas?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: group10,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group10 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: group10,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group10 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje6.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EleventhTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class EleventhTriajeScreen extends StatefulWidget {
  @override
  _EleventhTriajeScreenState createState() {
    return _EleventhTriajeScreenState();
  }
}

class _EleventhTriajeScreenState extends State<EleventhTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje6 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje6,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 70.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Recibe alguna medicación?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: group11,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group11 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: group11,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group11 = T;
                              });
                              eleventhTriajeScreen_Medication.text = '';
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      if (group11 == 1)
                        new Text(
                          'En caso de que su respuesta fue afirmativa, especifique cuál.',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      if (group11 == 1)
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                      if (group11 == 1)
                        TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Medicamento",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Tiene que rellenar este campo';
                            }
                            return null;
                          },
                          controller: eleventhTriajeScreen_Medication,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje6.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TwelvethTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class TwelvethTriajeScreen extends StatefulWidget {
  @override
  _TwelvethTriajeScreenState createState() {
    return _TwelvethTriajeScreenState();
  }
}

class _TwelvethTriajeScreenState extends State<TwelvethTriajeScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriaje6 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje6,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 70.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        '¿Usted fue diagnosticado con COVID-19?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: group12,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group12 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: group12,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                group12 = T;
                              });
                              twelvethTriajeScreen_Mecanism.text = '';
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      if (group12 == 1)
                        new Text(
                          'En caso de que su respuesta fue afirmativa, especifique si fue por Hisopado, prueba rápida o imagen (tomografía).',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      if (group12 == 1)
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                      if (group12 == 1)
                        TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Mecanismo",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Tiene que rellenar este campo';
                            }
                            return null;
                          },
                          controller: twelvethTriajeScreen_Mecanism,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje6.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThirteenthTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class ThirteenthTriajeScreen extends StatefulWidget {
  @override
  _ThirteenthTriajeScreenState createState() {
    return _ThirteenthTriajeScreenState();
  }
}

class _ThirteenthTriajeScreenState extends State<ThirteenthTriajeScreen> {
  final _formKeyTriaje5 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurpleAccent[100],
        child: Form(
            key: _formKeyTriaje5,
            child: Container(
              height: (MediaQuery.of(context).size.height),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(padding: EdgeInsets.only(top: 100.0)),
                    new Text(
                      'Verificador de síntomas en línea',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 60.0)),
                    new Text(
                      '¿Ha estado en contacto con alguna persona con COVID-19 o caso sospechoso?',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 40.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Radio(
                          value: 1,
                          groupValue: group13,
                          onChanged: (T) {
                            print(T);
                            setState(() {
                              group13 = T;
                            });
                          },
                        ),
                        new Text(
                          'Si',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        new Radio(
                          value: 2,
                          groupValue: group13,
                          onChanged: (T) {
                            print(T);
                            setState(() {
                              group13 = T;
                            });
                          },
                        ),
                        new Text(
                          'No',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, //Center Row contents vertically,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: RaisedButton(
                            elevation: 5.0,
                            color: Colors.yellow,
                            onPressed: () {
                              if (_formKeyTriaje5.currentState.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          FourteenthTriajeScreen()),
                                );
                              }
                            },
                            child: Text(
                              'Siguiente',
                              style: new TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //new Padding(padding: EdgeInsets.only(top:20.0)),
                  ],
                ),
              ),
            )));
  }
}

class FourteenthTriajeScreen extends StatefulWidget {
  @override
  _FourteenthTriajeScreenState createState() {
    return _FourteenthTriajeScreenState();
  }
}

class _FourteenthTriajeScreenState extends State<FourteenthTriajeScreen>
    with SingleTickerProviderStateMixin {
  final format = DateFormat("yyyy-MM-dd");
  final _formKeyTriaje14 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriaje14,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 60.0)),
                      new Text(
                        'Coronavirus (COVI-19)',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        'Si tiene más de un síntoma, elija el que más le moleste hoy. (Puede elegir más de uno)',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      new CheckboxListTile(
                        title: Text("Fiebre (Mayor o igual a 38, menor a 38)"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked1,
                        onChanged: (bool newValue1) {
                          setState(() {
                            _checked1 = newValue1;
                          });
                          _checked8 = false;
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      new CheckboxListTile(
                        title: Text("Tos"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked2,
                        onChanged: (bool newValue2) {
                          setState(() {
                            _checked2 = newValue2;
                          });
                          _checked8 = false;
                          print(_checked2);
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      if (_checked2) Text('Formato (${format.pattern})'),
                      if (_checked2)
                        DateTimeField(
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                          controller: fourteenthTriajeScreen_TosDate,
                        ),
                      //),
                      new CheckboxListTile(
                        title: Text("Fatiga"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked3,
                        onChanged: (bool newValue3) {
                          setState(() {
                            _checked3 = newValue3;
                          });
                          _checked8 = false;
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      new CheckboxListTile(
                        title: Text("Disminución del apetito"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked4,
                        onChanged: (bool newValue4) {
                          setState(() {
                            _checked4 = newValue4;
                          });
                          _checked8 = false;
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      new CheckboxListTile(
                        title: Text("Dificultad para respirar (Disnea)"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked5,
                        onChanged: (bool newValue5) {
                          setState(() {
                            _checked5 = newValue5;
                          });
                          _checked8 = false;
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      new CheckboxListTile(
                        title: Text("Malestar general (Mialgia)"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked6,
                        onChanged: (bool newValue6) {
                          setState(() {
                            _checked6 = newValue6;
                          });
                          _checked8 = false;
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      if (_checked6) Text('Formato (${format.pattern})'),
                      if (_checked6)
                        DateTimeField(
                          format: format,
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100));
                          },
                          controller: fourteenthTriajeScreen_MialgiaDate,
                        ),
                      new CheckboxListTile(
                        title: Text("Otros"),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _checked7,
                        onChanged: (bool newValue7) {
                          setState(() {
                            _checked7 = newValue7;
                          });
                          _checked8 = false;
                        },
                        activeColor: Colors.deepPurple,
                        checkColor: Colors.white,
                      ),
                      if (_checked7)
                        (TextFormField(
                          decoration: new InputDecoration(
                            labelText:
                                "dolor de garganta, congestión nasal, cefalea, diarrea, náuseas y vómitos, perdida de sensibilidad olfativa  o gustativa",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Tiene que rellenar este campo';
                            }
                            return null;
                          },
                          controller: fourteenthTriajeScreen_Others,
                        )),
                      if (_checked1 == false &&
                          _checked2 == false &&
                          _checked3 == false &&
                          _checked4 == false &&
                          _checked5 == false &&
                          _checked6 == false &&
                          _checked7 == false)
                        new CheckboxListTile(
                          title: Text("No tengo ninguno de estos síntomas"),
                          controlAffinity: ListTileControlAffinity.platform,
                          value: _checked8,
                          onChanged: (bool newValue8) {
                            setState(() {
                              _checked8 = newValue8;
                            });
                          },
                          activeColor: Colors.deepPurple,
                          checkColor: Colors.white,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyTriaje14.currentState.validate()) {
                                  if (_checked1 == true ||
                                      _checked2 == true ||
                                      _checked3 == true ||
                                      _checked4 == true ||
                                      _checked5 == true ||
                                      _checked6 == true ||
                                      _checked7 == true ||
                                      _checked8 == true) {
                                    if (_checked2 == false ||
                                        _checked2 == true &&
                                            fourteenthTriajeScreen_TosDate
                                                    .text !=
                                                '') {
                                      if (_checked6 == false ||
                                          _checked6 == true &&
                                              fourteenthTriajeScreen_MialgiaDate
                                                      .text !=
                                                  '') {
                                        if (_checked8) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Circuit2FirstScreen()),
                                          );
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Circuit1FirstScreen()),
                                          );
                                        }
                                      } else {
                                        print('Ingrese fecha!');
                                      }
                                    } else {
                                      print('Ingrese fecha!');
                                    }
                                  }
                                }
                              },
                              child: Text(
                                'Siguiente',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class Circuit1FirstScreen extends StatefulWidget {
  @override
  _Circuit1FirstScreenState createState() {
    return _Circuit1FirstScreenState();
  }
}

class _Circuit1FirstScreenState extends State<Circuit1FirstScreen> {
  int group9 = 1;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurpleAccent[100],
        child: Form(
            //key: _formKeyTriaje9,
            child: Container(
          height: (MediaQuery.of(context).size.height),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 160.0)),
                new Text(
                  'Verificador de síntomas en línea',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                new Padding(padding: EdgeInsets.only(top: 50.0)),
                new Text(
                  'Ahora le haremos preguntas sobre sus sintomas. Algunos pueden no parecer relevantes pero nos ayudan a descartar cosas. Primero descartamos condiciones graves. No obtendra un diagnostico, pero descubrira que hacer a continuacion.',
                  textAlign: TextAlign.justify,
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: RaisedButton(
                        elevation: 5.0,
                        color: Colors.yellow,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Circuit1SecondScreen()),
                          );
                        },
                        child: Text(
                          'Si, entiendo',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}

class Circuit1SecondScreen extends StatefulWidget {
  @override
  _Circuit1SecondScreenState createState() {
    return _Circuit1SecondScreenState();
  }
}

class _Circuit1SecondScreenState extends State<Circuit1SecondScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyPeople = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyPeople,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        '¿Tiene sensación de ahogamiento o siente que le es difícil respirar hondo por la boca o lo hace con mucho esfuerzo?',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: groupcircuit1_1,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_1 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 2,
                            groupValue: groupcircuit1_1,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_1 = T;
                              });
                            },
                          ),
                          new Text(
                            'No estoy seguro',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.left,
                        children: <Widget>[
                          new Radio(
                            value: 3,
                            groupValue: groupcircuit1_1,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_1 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        '¿Se siente desorientado y confundido? ¿Tiene dificultad para prestar atención, recordar y tomar decisiones?',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: groupcircuit1_2,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_2 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: groupcircuit1_2,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_2 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        '¿Tuvo o tiene fiebre mayor a 38° por más de dos días?',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: groupcircuit1_3,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_3 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: groupcircuit1_3,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_3 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        '¿Tiene algún dolor en el pecho o en la parte superior de la espalda en este momento? También puede sentir dolor en los brazos, hombros, cuello o mandíbula.',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: groupcircuit1_4,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_4 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 2,
                            groupValue: groupcircuit1_4,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_4 = T;
                              });
                            },
                          ),
                          new Text(
                            'No estoy seguro',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.left,
                        children: <Widget>[
                          new Radio(
                            value: 3,
                            groupValue: groupcircuit1_4,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_4 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        '¿Ha notado que presenta una coloración azul de los labios, manos o pies?',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: groupcircuit1_5,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_5 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          new Radio(
                            value: 2,
                            groupValue: groupcircuit1_5,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_5 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        '¿Está tan enfermo que ha dejado de realizar todas sus actividades diarias habituales? Esto significa cosas que normalmente haría todos los días, como levantarse de la cama, ducharse, vestirse, mirar televisión o leer un libro.',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 40.0)),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 1,
                            groupValue: groupcircuit1_6,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_6 = T;
                              });
                            },
                          ),
                          new Text(
                            'Si',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 2,
                            groupValue: groupcircuit1_6,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_6 = T;
                              });
                            },
                          ),
                          new Text(
                            'No estoy seguro',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.left,
                        children: <Widget>[
                          new Radio(
                            value: 3,
                            groupValue: groupcircuit1_6,
                            onChanged: (T) {
                              print(T);
                              setState(() {
                                groupcircuit1_6 = T;
                              });
                            },
                          ),
                          new Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      new Text(
                        '¿Con cuántas personas vives?',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Cantidad de personas",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: firstCircuitTriajeScreen_People,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.yellow,
                              onPressed: () {
                                if (_formKeyPeople.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TestTriajeScreen()),
                                  );
                                }
                              },
                              child: Text(
                                'Acceder a la videollamada',
                                style: new TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //new Padding(padding: EdgeInsets.only(top:20.0)),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class Circuit2FirstScreen extends StatefulWidget {
  @override
  _Circuit2FirstScreenState createState() {
    return _Circuit2FirstScreenState();
  }
}

class _Circuit2FirstScreenState extends State<Circuit2FirstScreen>
    with SingleTickerProviderStateMixin {
  final _formKeyTriajeCircuit2 = GlobalKey<FormState>();
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNodeAge = FocusNode();
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 70.0, end: 70.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _focusNodeAge.addListener(() {
      if (_focusNodeAge.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNodeAge.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      resizeToAvoidBottomInset: true,
      body: new InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
              key: _formKeyTriajeCircuit2,
              child: Container(
                height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.only(top: 160.0)),
                      new Text(
                        'Verificador de síntomas en línea',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 50.0)),
                      new Text(
                        'Como no seleccionó ninguno de los síntomas, ES POCO PROBABLE QUE TENGA COVID-19. Aun así lo contactaremos con un doctor para que le brinde más información general sobre Covid-19.',
                        textAlign: TextAlign.justify,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 30.0)),
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Celular",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Tiene que rellenar este campo';
                          }
                          return null;
                        },
                        controller: circuit2FirstScreen_Phone,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: RaisedButton(
                          elevation: 5.0,
                          color: Colors.yellow,
                          onPressed: () {
                            if (_formKeyTriajeCircuit2.currentState
                                .validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TestTriajeScreen()),
                              );
                            }
                          },
                          child: Text(
                            'Si, deseo una consulta con un médico',
                            style: new TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.0),
                        child: RaisedButton(
                          elevation: 5.0,
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Text(
                            'No, gracias',
                            style: new TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ),
                      //],
                      //),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class TestTriajeScreen extends StatefulWidget {
  @override
  _TestTriajeScreenState createState() {
    return _TestTriajeScreenState();
  }
}

class _TestTriajeScreenState extends State<TestTriajeScreen> {
  final _formKeyTriaje1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //if(secondTriajeScreen_Name.text != ''){
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKeyTriaje1,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 70.0)),
                new Text(
                  'DATOS OBTENIDOS',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                new Padding(padding: EdgeInsets.only(top: 30.0)),
                Text('Dni: ' + secondTriajeScreen_Dni.text),
                Text('Sexo: ' + secondTSgroup.toString()),
                Text('Edad: ' + secondTriajeScreen_Age.text),
                Text('Region: ' + dropdownValueRegion.toString()),
                Text('Provincia: ' + dropdownValueProvincia.toString()),
                Text('Distrito: ' + dropdownValueDistrito.toString()),
                Text('Direccion: ' + thirdTriajeScreen_Place.text),
                Text('Trabajo: ' + fourthTriajeScreen_Work.text),
                Text('Peso (kg): ' + fifthTriajeScreen_Weight.text),
                Text('Talla (cm): ' + fifthTriajeScreen_Size.text),
                Text('Cantidad de respiros: ' +
                    sixthTriajeScreen_Respirations.text),
                Text('Gestando: ' + group7.toString()),
                Text('Tiene una enfermedad?: ' + group8.toString()),
                Text('Enfermedad: ' + eigthTriajeScreen_Disease.text),
                Text('Alergia a un medicamento?: ' + group9.toString()),
                Text('Alergia: ' + ninethTriajeScreen_Medicine.text),
                Text(
                    'Consume alcohol, tabaco o drogas?: ' + group10.toString()),
                Text('Recibe medicacion: ' + group11.toString()),
                Text('Medicacion: ' + eleventhTriajeScreen_Medication.text),
                Text('Tiene COVID?: ' + group12.toString()),
                Text('Mecanismo: ' + twelvethTriajeScreen_Mecanism.text),
                Text('Ha estado en contacto con un caso sospechoso?: ' +
                    group13.toString()),
                Text('Fiebre: ' + _checked1.toString()),
                Text('Tos: ' + _checked2.toString()),
                Text('Fecha Tos: ' + fourteenthTriajeScreen_TosDate.text),
                Text('Fatiga: ' + _checked3.toString()),
                Text('Disminucion del apetito: ' + _checked4.toString()),
                Text('Dificultad respiratoria: ' + _checked5.toString()),
                Text('Malestar general (Mialgia): ' + _checked6.toString()),
                Text('Fecha Mialgia: ' +
                    fourteenthTriajeScreen_MialgiaDate.text),
                Text('Otros: ' + _checked7.toString()),
                Text('Especificacion otros: ' +
                    fourteenthTriajeScreen_Others.text),
                Text('Ninguno de esos: ' + _checked8.toString()),
                Text('Grupo de Preguntas 1: ' + groupcircuit1_1.toString()),
                Text('Grupo de Preguntas 2: ' + groupcircuit1_2.toString()),
                Text('Grupo de Preguntas 3: ' + groupcircuit1_3.toString()),
                Text('Grupo de Preguntas 4: ' + groupcircuit1_4.toString()),
                Text('Grupo de Preguntas 5: ' + groupcircuit1_5.toString()),
                Text('Grupo de Preguntas 6: ' + groupcircuit1_6.toString()),
                Text('Cantidad de personas con las que vive: ' +
                    firstCircuitTriajeScreen_People.text),
                Text('Telefono: ' + circuit2FirstScreen_Phone.text),
                new Padding(padding: EdgeInsets.only(top: 30.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: RaisedButton(
                        elevation: 5.0,
                        color: Colors.yellow,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                          secondTriajeScreen_Dni.text = '';
                          secondTSgroup = 1;
                          secondTriajeScreen_Age.text = '';
                          dropdownValueRegion = 1;
                          dropdownValueProvincia = 1;
                          dropdownValueDistrito = 1;
                          thirdTriajeScreen_Region.text = '';
                          thirdTriajeScreen_Province.text = '';
                          thirdTriajeScreen_District.text = '';
                          thirdTriajeScreen_Place.text = '';
                          fourthTriajeScreen_Work.text = '';
                          fifthTriajeScreen_Weight.text = '';
                          fifthTriajeScreen_Size.text = '';
                          sixthTriajeScreen_Respirations.text = '';
                          group7 = 1;
                          group8 = 1;
                          eigthTriajeScreen_Disease.text = '';
                          group9 = 1;
                          ninethTriajeScreen_Medicine.text = '';
                          group10 = 1;
                          group11 = 1;
                          eleventhTriajeScreen_Medication.text = '';
                          group12 = 1;
                          twelvethTriajeScreen_Mecanism.text = '';
                          group13 = 1;
                          _checked1 = false;
                          _checked2 = false;
                          fourteenthTriajeScreen_TosDate.text = '';
                          _checked3 = false;
                          _checked4 = false;
                          _checked5 = false;
                          _checked6 = false;
                          fourteenthTriajeScreen_MialgiaDate.text = '';
                          _checked7 = false;
                          fourteenthTriajeScreen_Others.text = '';
                          _checked8 = false;
                          groupcircuit1_1 = 1;
                          groupcircuit1_2 = 1;
                          groupcircuit1_3 = 1;
                          groupcircuit1_4 = 1;
                          groupcircuit1_5 = 1;
                          groupcircuit1_6 = 1;
                          firstCircuitTriajeScreen_People.text = '';
                          circuit2FirstScreen_Phone.text = '';
                        },
                        child: Text(
                          'OK',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //}
  }
}
