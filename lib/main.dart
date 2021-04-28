import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/graphics.dart';
import 'package:helloworld/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  String e, p;
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          e = txtEmail.text;
          p = txtPassword.text;

          if (txtEmail.text.isEmpty && txtPassword.text.isEmpty) {
            return false;
          } else {
            print('Email: $e , Password: $p');
          }
        },
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text(
          'Sign in',
          style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        minWidth: MediaQuery.of(context).size.width,
      ),
    );

    final txtField1 = TextField(
      onTap: () {},
      controller: txtEmail,
      textInputAction: TextInputAction.next,
      obscureText: false,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: 'Email',
        labelStyle: GoogleFonts.montserrat(fontSize: 20.0, color: Colors.blue),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final txtField2 = TextField(
      cursorColor: Colors.blue,
      onTap: () {},
      controller: txtPassword,
      obscureText: true,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: GoogleFonts.montserrat(fontSize: 20.0, color: Colors.blue),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // final img1 = Image.asset(
    //   'assets/1.png',
    // );
    // final img2 = CircleAvatar(
    //   backgroundImage: NetworkImage(
    //       'https://images.unsplash.com/photo-1487243528516-7fa712e910f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80'),
    //   radius: 100.0,
    //   backgroundColor: Colors.transparent,
    // );

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('NextinGo'),
              accountEmail: Text('nextingoindia@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'Next',
                  style: GoogleFonts.montserrat(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Text('27/04/2021'),
              subtitle: Text('Update values'),
            ),
            ListTile(
              leading: Icon(Icons.dock_outlined),
              title: Text('FAQ'),
              trailing: Text(''),
              subtitle: Text('Read before raising tickets'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              trailing: Text(''),
              subtitle: Text('This will sign you out'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            CustomPaint(
                child: Container(
                  height: 150.0,
                ),
                painter: CurvePainter()),
            Container(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'Sign in',
                                style: GoogleFonts.montserrat(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              elevation: 6,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0,
                                    bottom: 15.0,
                                    right: 20.0,
                                    left: 20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    txtField1,
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    txtField2,
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    Container(width: 200.0, child: loginButton),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            child: Text(
                                              'Forgot Password?',
                                              style: GoogleFonts.montserrat(
                                                fontSize: 15,
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have account?',
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign up',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
