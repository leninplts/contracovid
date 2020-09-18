import 'package:flutter/material.dart';
import 'package:contracovid/medico/providers/user_provider.dart';
import 'package:contracovid/medico/utils/data_search_util.dart';
import 'package:contracovid/medico/pages/historiales_clinicos_page.dart';
import 'package:contracovid/medico/widgets/drawer_widget.dart';

class PacientesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.purpleAccent),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Mis Pacientes',
          style: TextStyle(color: Colors.purpleAccent),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      drawer: DocDrawer(),
      body: SafeArea(
        child: _lista(context),
      ),
    );
  }

  Widget _lista(BuildContext context) {
    return FutureBuilder(
      future: userProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => ListView(
        children: _listaItems(snapshot.data, context),
      ),
    );

    // return ListView(
    //   children: <Widget>[

    //   ],
    // );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> usuarios = [];

    data.forEach((user) {
      final widgetTemp = GestureDetector(
        onTap: () {
          //final snackBar = SnackBar(content: Text(user['nombre']));
          //Scaffold.of(context).showSnackBar(snackBar);
          print(user['nombre']);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HistorialesClinicos()),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 10.0),
                child: CircleAvatar(
                  child: Text(user['nombre'][0].toUpperCase()),
                  backgroundColor: Colors.grey[200],
                  foregroundColor:
                      (user['genero']) ? Colors.blue : Colors.pinkAccent,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            user['nombre'],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: 12.0,
                          child: CircleAvatar(
                            backgroundColor: (user['verificacion'] == 'leve')
                                ? Colors.greenAccent
                                : (user['verificacion'] == 'moderado')
                                    ? Colors.orange
                                    : Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          (user['genero']) ? 'M' : 'F',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: (user['genero'])
                                ? Colors.blue
                                : Colors.pinkAccent,
                          ),
                        ),
                        Text(
                          user['ocupacion'],
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          user['ciudad'],
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          ),
        ),
      );

      usuarios..add(widgetTemp)..add(Divider());
    });

    return usuarios;
  }
}
