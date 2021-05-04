import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FutureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future builder Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => FutureDemoPage(),
              ),
            ),
            child: Text(
              'Demonstrate FutureBuilder',
              style: GoogleFonts.poppins(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}

class FutureDemoPage extends StatelessWidget {
  /// Function that will return a
  /// "string" after some time
  /// To demonstrate network call
  /// delay of [2 seconds] is used
  ///
  /// This function will behave as an
  /// asynchronous function
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "I am data from future";
      // throw Exception("Custom Error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future data display'),
        ),
        body: FutureBuilder(
          builder: (context, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18),
                  ),
                );

                // if we got our data
              } else if (snapshot.hasData) {
                // Extracting data from snapshot object
                final data = snapshot.data as String;
                return Center(
                  child: Text(
                    '$data',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return Center(
              child: CircularProgressIndicator(),
            );
          },

          // Future that needs to be resolved
          // inorder to display something on the Canvas
          future: getData(),
        ),
      ),
    );
  }
}
