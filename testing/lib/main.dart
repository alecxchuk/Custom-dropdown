import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// This is your where you get your values
  String propertyTypeValue = 'Residential Building';
  String buildingTypeValue = 'Bungalow';
  String propertyZoneValue = "LVZ";
  String buildingPurposeValue = "Business";


  /// All these are sample u will create your own
  var propertyType = [
    "Residential Building",
    "Hotel",
    "School",
    "Petrol Station",
    "Telecom Base Station",
    "Power substation",
    "Banks",
    "Microfinance bank",
    "Finance house",
    "Insurance Companies",
    "Industrial Properties",
    "Hospitals",
    "Office Complex/Business Premises"
  ];

  static const propertyZone = [
    "EDU",
    "ENC",
    "HVZ",
    "LVZ",
    "MVZ",
  ];

  static const buildingPurpose = [
    "Fully Business",
    "Mixed",
    "Owner Occupier",
    "Business",
  ];
  var buildingTypemasters = ["Bungalow", "Duplex", "Face me i face you"];
  /*static const buildingTypemasters = [
    {"id": 1, "name": "Bungalow", "ParentId": 1},
    {"id": 2, "name": "Duplex", "ParentId": 1},
    {"id": 3, "name": "Face me i face you", "ParentId": 1},
  ];
    var propertyType = [
    {"id": 1, "name": "Residential Building"},
    {"id": 2, "name": "Hotel"},
    {"id": 4, "name": "Petrol Station"},
    {"id": 5, "name": "Telecom Base Station"},
    {"id": 6, "name": "Power substation"},
    {"id": 7, "name": "Banks"},
    {"id": 8, "name": "Microfinance bank"},
    {"id": 9, "name": "Finance house"},
    {"id": 10, "name": "Insurance Companies"},
    {"id": 11, "name": "Industrial Properties"},
    {"id": 12, "name": "Hospitals"},
    {"id": 13, "name": "Office Complex/Business Premises"}
  ];

  static const propertyZonemasters = [
    {"id": 1, "name": "HVZ", "ParentId": 1},
    {"id": 2, "name": "MVZ", "ParentId": 1},
    {"id": 3, "name": "LVZ", "ParentId": 1},
    {"id": 4, "name": "HVZ", "ParentId": 2},
    {"id": 5, "name": "EDU", "ParentId": 3},
    {"id": 6, "name": "ENC", "ParentId": 4},
    {"id": 7, "name": "ENC", "ParentId": 5},
    {"id": 8, "name": "ENC", "ParentId": 6},
    {"id": 9, "name": "ENC", "ParentId": 7},
    {"id": 10, "name": "ENC", "ParentId": 8},
    {"id": 11, "name": "ENC", "ParentId": 9},
    {"id": 12, "name": "ENC", "ParentId": 10},
    {"id": 13, "name": "ENC", "ParentId": 11},
    {"id": 14, "name": "ENC", "ParentId": 12},
    {"id": 15, "name": "ENC", "ParentId": 13},
  ];



  static const buildingPurposemasters = [
    {"id": 1, "name": "Fully Business", "ParentId": 1},
    {"id": 2, "name": "Mixed", "ParentId": 1},
    {"id": 3, "name": "Owner Occupier", "ParentId": 1},
    {"id": 4, "name": "Business", "ParentId": 2},
    {"id": 5, "name": "Private Secondary School (A)", "ParentId": 3},
    {"id": 6, "name": "Private Secondary School (B)", "ParentId": 3},
    {"id": 7, "name": "Private Primary School (A)", "ParentId": 3},
    {"id": 8, "name": "Private Primary School (B)", "ParentId": 3},
    {"id": 9, "name": "Business", "ParentId": 4},
    {"id": 10, "name": "Business", "ParentId": 5},
    {"id": 11, "name": "Business", "ParentId": 6},
    {"id": 12, "name": "Business", "ParentId": 7},
    {"id": 13, "name": "Business", "ParentId": 8},
    {"id": 14, "name": "Business", "ParentId": 9},
    {"id": 15, "name": "Business", "ParentId": 10},
    {"id": 16, "name": "Business", "ParentId": 11},
    {"id": 17, "name": "Business", "ParentId": 12},
    {"id": 18, "name": "Business", "ParentId": 13},
    // {"id": 3, "name": "Business", "ParentId": 13},
  ];*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              key: UniqueKey(),
              value: propertyTypeValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  propertyTypeValue = newValue!;
                });
              },
              items: propertyType //<String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              key: UniqueKey(),
              hint: Text('Building Type'),
              value: buildingTypeValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: propertyTypeValue == 'Banks'

                  /// If banks is selected in the first dropdown this one will be disabled
                  ? null
                  : (String? newValue) {
                      setState(() {
                        buildingTypeValue = newValue!;
                      });
                    },
              items: buildingTypemasters
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              value: propertyZoneValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  propertyZoneValue = newValue!;
                });
              },
              items: propertyZone.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              value: buildingPurposeValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  buildingPurposeValue = newValue!;
                });
              },
              items:
                  buildingPurpose.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
