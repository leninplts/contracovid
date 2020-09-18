import 'package:contracovid/user/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class UserPerfilPage extends StatefulWidget {
  @override
  _UserPerfilPageState createState() => _UserPerfilPageState();
}

class _UserPerfilPageState extends State<UserPerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Perfil',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Image.asset(
                  'assets/images/usuario.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Usuario Demo1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text("usuario1@demo.com"),
            Text("+51 951084366"),
            Text("Desarrollador"),
          ],
        ),
      ),
    );
  }
}
