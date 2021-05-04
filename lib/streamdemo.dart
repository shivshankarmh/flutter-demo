import 'dart:async';
import 'package:flutter/material.dart';

class FlutterStreamBuilder extends StatefulWidget {
  @override
  _FlutterStreamBuilderState createState() => _FlutterStreamBuilderState();
}

class _FlutterStreamBuilderState extends State<FlutterStreamBuilder> {
  double _height;
  double _width;

  final imgStream = StreamController<Image>();

  int imgCounter = -1;

  final List<Image> imageList = [
    Image.asset(
      'assets/1.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/2.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/3.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/4.jpg',
      fit: BoxFit.cover,
    ),
  ];

  @override
  void dispose() {
    imgStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: imgStream.stream,
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }

                  if (snapshot.connectionState == ConnectionState.done) {}

                  return Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    //  color: snapshot.data,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: snapshot.data,
                    ),
                  );
                }),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                // colorStream.sink.add(Colors.blue);
                if (imgCounter > 2) imgCounter = 0;

                imgCounter++;
                print('imgCounter Value: $imgCounter');
                //  (4         <  4             )
                if (imgCounter < imageList.length) {
                  //                              4
                  imgStream.sink.add(imageList[imgCounter]);
                } else {
                  imgStream.close();
                  print('Stream closed.');
                }
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                "  Click Me  ".toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
