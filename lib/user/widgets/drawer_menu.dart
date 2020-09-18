import 'package:contracovid/main.dart';
import 'package:flutter/material.dart';
import 'package:contracovid/user/screens/screens.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Colors.deepPurple, Colors.purple]),
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  child: Image.asset(
                    'assets/images/usuario.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Usuario',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListTile(
            onTap: () {},
            title: Text(
              "Perfil",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.purple,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.purple,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListTile(
            onTap: () {},
            title: Text(
              "Notificaciones",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.notifications_active,
              color: Colors.purple,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.purple,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListTile(
            onTap: () {},
            title: Text(
              "Consultas",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.pageview,
              color: Colors.purple,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.purple,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstTriajeScreen()),
              );
            },
            title: Text(
              "Triaje",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.note_add,
              color: Colors.purple,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.purple,
            ),
          ),
        ),
        // Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) => false);
            },
            title: Text(
              "Salir",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.subdirectory_arrow_left,
              color: Colors.purple,
            ),
          ),
        ),
      ],
    );
  }
}
