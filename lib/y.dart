import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //KITA BERANDAI PUNYA DATA YANG DIDAPATKAN DARI BACKEND DENGAN FORMAT SEPERTI BERIKUT
  //SEBUAH ARRAY YANG DI DALAMNYA TERDAPAT OBJECT DATA
  final List<Map<String, dynamic>> _kategori = [
    {'cat': 'Car Service', 'color': Colors.orange.shade200},
    {'cat': 'Oil Change', 'color': Colors.orange.shade200},
    {'cat': 'Paint', 'color': Colors.orange.shade200},
    {'cat': 'Vacum', 'color': Colors.orange.shade200},
    {'cat': 'Tire Change', 'color': Colors.orange.shade200},
    {
      'cat': 'Tire Change Tire Change Tire Change Tire Change',
      'color': Colors.orange.shade200
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Grid View'),
            ),
            body: Container(
                margin: const EdgeInsets.all(10.0),
                child: GridView.builder(
                    itemCount: _kategori.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3,
                        childAspectRatio: 1),
                    itemBuilder: (context, index) {
                      return /*Container(
                          color: _kategori[index]['color'],
                          height: 200,
                          child: Center(
                              child: Text(_kategori[index]['cat'],
                                  style: TextStyle(
                                    color:
                                        _kategori[index]['cat'] != 'Javascript'
                                            ? Colors.white
                                            : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ))));*/
                          /*ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                  color: _kategori[index]['color'],
                                  height: 200,
                                  child: Center(
                                      child: Text(_kategori[index]['cat'],
                                          style: TextStyle(
                                            color: _kategori[index]['cat'] !=
                                                    'Javascript'
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold,
                                          )))));*/
                          ClipPath(
                              child: Container(
                                  color: _kategori[index]['color'],
                                  width: 2000,
                                  height: 100,
                                  child: Center(
                                      child: Text(
                                    _kategori[index]['cat'],
                                    // style: TextStyle(
                                    //   color: _kategori[index]['cat'] !=
                                    //           'Tire Change Tire Change Tire Change Tire Change'
                                    //       ? Colors.white
                                    //       : Colors.black,
                                    //   fontWeight: FontWeight.bold,
                                    // )
                                  ))));
                    }))));
  }
}

class ClipperContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, size.width / 2, size.height, size.width);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
