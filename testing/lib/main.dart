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
      title: 'Dependable Dropdowns',
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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// This is your where you get your values
  String? propertyTypeValue;
  String? buildingTypeValue;
  String? propertyZoneValue;
  String? buildingPurposeValue;

  /// All these are sample u will create your own
  var propertyType = [
    {"id": 1, "name": "Residential Building"},
    {"id": 2, "name": "Hotel"},
    {"id": 3, "name": "School"},
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
  ];

  static const buildingTypemasters = [
    {"id": 1, "name": "Bungalow", "ParentId": 1},
    {"id": 2, "name": "Duplex", "ParentId": 1},
    {"id": 3, "name": "Face me i face you", "ParentId": 1},
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

  getBuildingPurpose(propertyType) {
    switch (propertyType) {
      case 'Residential Building':
        return buildingPurposemasters
            .where((element) => element['ParentId'] == 1);
      case 'Hotel':
      case 'Office Complex/Business Premises':
        return buildingPurposemasters
            .where((element) => element['ParentId'] == 2);
      case 'School':
        return buildingPurposemasters
            .where((element) => element['ParentId'] == 3);
      default:
        return buildingPurposemasters
            .where((element) => element['ParentId'] == 4);
    }
  }

  getPropertyZone(propertyType) {
    switch (propertyType) {
      case 'Residential Building':
        return propertyZonemasters.where((element) => element['ParentId'] == 1);
      case 'Hotel':
      case 'Office Complex/Business Premises':
        return propertyZonemasters.where((element) => element['ParentId'] == 2);
      case 'School':
        return propertyZonemasters.where((element) => element['ParentId'] == 3);
      default:
        return propertyZonemasters.where((element) => element['ParentId'] == 4);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              key: UniqueKey(),
              hint: const Text('Select Property Type'),
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
              items: propertyType.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value['name'].toString(),
                  child: Text(value['name'].toString()),
                );
              }).toList(),
              value: propertyTypeValue,
            ),
            DropdownButton<String>(
                key: UniqueKey(),
                hint: const Text('Building Type'),
                value: buildingTypeValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: propertyTypeValue == 'Residential Building'

                    /// If banks is selected in the first dropdown this one will be disabled
                    ? (String? newValue) {
                        setState(() {
                          buildingTypeValue = newValue!;
                        });
                      }
                    : null,
                items: buildingTypemasters.map<DropdownMenuItem<String>>((e) {
                  return DropdownMenuItem<String>(
                      value: e['name'].toString(),
                      child: Text(e['name'].toString()));
                }).toList()),
            DropdownButton<String>(
              value: buildingPurposeValue,
              hint: const Text('Building Purpose'),
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
              items: getBuildingPurpose(propertyTypeValue)
                  .map<DropdownMenuItem<String>>((e) {
                return DropdownMenuItem<String>(
                  value: e['name'].toString(),
                  child: Text(e['name'].toString()),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              value: propertyZoneValue,
              hint: const Text('Property Zone'),
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
              items: getPropertyZone(propertyTypeValue)
                  .map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value['name'].toString(),
                  child: Text(value['name'].toString()),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
