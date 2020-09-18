import 'package:flutter/material.dart';

class CitasWidget extends StatefulWidget {
  CitasWidget({Key key}) : super(key: key);

  @override
  _CitasWidgetState createState() => _CitasWidgetState();
}

class _CitasWidgetState extends State<CitasWidget> {
  List<int> top = [0, 1, 2, 3, 4];
  List<int> bottom = [0];
  Color marron = Color(0xffDA7557);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(
            top.length,
            (index) {
              return Center(
                child: Container(
                  height: 170.0,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.001),
                    width: 155.0,
                    decoration: BoxDecoration(
                      // color: Colors.blue[200 + top[index] % 4 * 100],
                      color: Color(0xff7531F5),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        width: 2.0,
                        color: Color(0xff7531F5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    (top[index] == 0)
                                        ? "Jose Mamani"
                                        : (top[index] == 1)
                                            ? "Rocio Mamani"
                                            : (top[index] == 2)
                                                ? "Liliana Mamani"
                                                : (top[index] == 3)
                                                    ? "Paulina Marina"
                                                    : "Oscar Quispe",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Text(
                                  "2020-9-8 12:05",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Caso: Critico",
                                  style: TextStyle(color: Colors.white60),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Center(
                            child: GestureDetector(
                              child: Text(
                                "Ver Cita",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Text('Item: ${top[index]}'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   mainAxisSize: MainAxisSize.max,
      //   children: [
      //     Padding(
      //       padding:
      //           EdgeInsets.only(top: 8.0, bottom: 8.0, left: 15.0, right: 10.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(
      //             "Citas",
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //           GestureDetector(
      //             onTap: () => SnackBar(content: Text("data")),
      //             child: Text(
      //               "Ver Todos...",
      //               style: TextStyle(
      //                 color: Colors.black,
      //                 decoration: TextDecoration.underline,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),

      //     SizedBox(
      //       height: 20.0,
      //     ),
      //   ],
      // ),
    );
  }
}
