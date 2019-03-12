import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(50.0);

class Category extends StatelessWidget {

  final ColorSwatch color;
  final IconData iconLocation;
  final String name;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
}) :  assert(name != null),
      assert(color != null),
      assert(iconLocation != null),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius ,
          highlightColor: color[50],
          splashColor: color[100],
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Icon(
                          iconLocation,
                          size: 60.0),
                  ),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  )
                ],
              ),
          )
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello Rectangle'),
          ),
          body: Category(),
        )
    ),
  );
}