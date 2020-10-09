import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dropdownValue = 'semanal';

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget bottonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.app_registration, 'CRIAR'),
          _buildButtonColumn(color, Icons.cancel_outlined, 'CANCELAR'),
        ],
      ),
    );

    Widget formSection = Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Nome da Meta',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Quanto você pretende salvar?',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Quando você quer atingir a meta?',
            ),
          ),
          DropdownButton(
            value: dropdownValue,
            icon: Icon(Icons.widgets),
            iconSize: 24,
            elevation: 16,
            items: <String>['52 Semanas', 'semanal', 'quinzenal', 'mensal']
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                .toList(),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Save Money Reminder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Save Money Remider'),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/save_money.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            formSection,
            bottonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
