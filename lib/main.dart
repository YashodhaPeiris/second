import 'package:flutter/material.dart';

enum Departments {  Service, Paint, Vaccum }

Future _asyncSimpleDialog(BuildContext context) async {
  return await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select AutoMax Services '),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Departments.Service);
              },
              child: const Text(' Service'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Departments.Paint);
              },
              child: const Text('Paint'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Departments.Vaccum);
              },
              child: const Text('Vaccum'),
            ),
          ],
        );
      });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Sample automax"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new RaisedButton(
              onPressed: () async {
                final Departments deptName = await _asyncSimpleDialog(context);
                print("Selected service is $deptName");
              },
              child: const Text("Automax"),
            ),
            
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}
