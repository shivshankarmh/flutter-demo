import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  @override
  _GridViewBuilderDemoState createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            color: Colors.amber,
            child: GestureDetector(
              onTap: () {
                print('$index Clicked');
              },
              child: Image.asset('assets/2.jpg'),
            ),
          );
        },
      ),
    );
  }
}
