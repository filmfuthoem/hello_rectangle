import 'package:flutter/material.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
///
///
///
final _backgroundColor = Colors.green[100];
List<String> fixedLengthList = new List(8);

class CategoryRoute extends StatelessWidget {

  const CategoryRoute();

  static const _categoryNames = <String> [
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currentcy'
  ];

  static const _baseColors = <Color> [
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {

    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    ListView.builder(
      padding: const EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) {
          return Text('');
        }
    );

    final listView = Container();

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text(
          'Unit Converter',
          style: TextStyle(fontSize: 30.0),

      ),
      elevation: 0.0,
      backgroundColor: Colors.greenAccent[100]
    );

    return Scaffold(
      appBar: appBar,
      body: listView
    );
  }
}