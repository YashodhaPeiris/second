import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  MyGridScreen({Key? key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemWidth = (size.height - kToolbarHeight - 24) / 2;
    final double itemHeight = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ja ja jaaa boiiii"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        childAspectRatio: (itemWidth / itemHeight),
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 100.0,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Lorem Ipsum is simply dummy text',
                style: TextStyle(fontSize: 20)),
            color: Colors.red,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Oil Change', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Cleanup', style: TextStyle(fontSize: 20)),
            color: Colors.green,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Tire Change', style: TextStyle(fontSize: 20)),
            color: Colors.pink,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Paint', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('V', style: TextStyle(fontSize: 20)),
            color: Colors.orange,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Vaaaaaaaa sfasfaaaaaaaa',
                style: TextStyle(fontSize: 20)),
            color: Colors.orange,
          ),
        ],
      )),
    );
  }
}
