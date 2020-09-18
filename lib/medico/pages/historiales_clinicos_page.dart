import 'package:flutter/material.dart';
import 'package:contracovid/medico/pages/doctor_pacient_page.dart';
import 'package:contracovid/medico/utils/data_search_util.dart';

class HistorialesClinicos extends StatefulWidget {
  @override
  _HistorialesClinicosState createState() => _HistorialesClinicosState();
}

class _HistorialesClinicosState extends State<HistorialesClinicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.purpleAccent),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Historiales Clinicos',
          style: TextStyle(color: Colors.purpleAccent),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              }),
        ],
      ),
      body: new InkWell(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(top: 20)),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TabbedAppBarDoctor()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Lenin Jose Mamani Huaylla',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'HC01',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red[300],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '2020-9-4 12:05',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Padding(padding: const EdgeInsets.only(top: 40)),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TabbedAppBarDoctor()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Lenin Jose Mamani Huaylla',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'HC02',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red[300],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '2020-9-7 12:05',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TabbedAppBarDoctor()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Lenin Jose Mamani Huaylla',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'HC03',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red[300],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '2020-9-4 12:05',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TabbedAppBarDoctor()),
          );
        },
        label: Text('Nueva historia'),
        icon: Icon(Icons.book),
        backgroundColor: Colors.green,
      ),
    );
  }
}
