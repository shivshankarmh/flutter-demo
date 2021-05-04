import 'package:flutter/material.dart';

class GridViewCountDemo extends StatefulWidget {
  @override
  _GridViewCountDemoState createState() => _GridViewCountDemoState();
}

class _GridViewCountDemoState extends State<GridViewCountDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.count(
          padding: EdgeInsets.all(20.0),
          crossAxisSpacing: 20.0,
          crossAxisCount: 3,
          mainAxisSpacing: 20.0,
          scrollDirection: Axis.vertical,
          children: List.generate(100, (index) {
            return Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              elevation: 6, // largest =  a>b ? a : b
              color: (index % 2 == 0) ? Colors.blue : Colors.red,
            );
          }),
        ),
      ),
    );
  }
}
