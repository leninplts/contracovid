import 'package:contracovid/Animations/FadeAnimation.dart';
import 'package:contracovid/login/DoctorLoginPage.dart';
import 'package:contracovid/login/SignUpPage.dart';
import 'package:contracovid/user/screens/screens.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(3, 9, 23, 1),
        body: Container(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                FadeAnimation(
                    1.2,
                    Text(
                      "Inicio de Sesion",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                  1.5,
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey[300]),
                                  ),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Colors.grey.withOpacity(.8),
                                    ),
                                    hintText: "Email o Usuario",
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Rellena este campo';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(.8)),
                                    hintText: "Contraseña",
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Tiene que rellenar este campo';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FadeAnimation(
                              1.8,
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    if (_formKey.currentState.validate()) {
                                      // If the form is valid, display a Snackbar.

                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              BottomNavScreen(),
                                        ),
                                        (Route<dynamic> route) => false,
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: 120,
                                    padding: EdgeInsets.only(
                                      top: 15.0,
                                      left: 13.0,
                                      right: 13.0,
                                      bottom: 15.0,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blue[800]),
                                    child: Center(
                                        child: Text(
                                      "Iniciar Sesion",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(.9)),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                            FadeAnimation(
                              1.8,
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUpPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 120,
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromRGBO(7, 19, 47, .5),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Registrarce",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(.9)),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "¿Eres un médico?",
                              style: new TextStyle(
                                  color: Colors.white54, fontSize: 15.0),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DoctorLoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                " Clic aquí",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
