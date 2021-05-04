import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController txtName = new TextEditingController();

  TextEditingController txtEmail = new TextEditingController();

  TextEditingController txtPhone = new TextEditingController();

  TextEditingController txtPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nameTxt = TextField(
      onTap: () {},
      controller: txtName,
      textInputAction: TextInputAction.next,
      obscureText: false,
      keyboardType: TextInputType.name,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );

    final emailTxt = TextField(
      onTap: () {},
      controller: txtEmail,
      textInputAction: TextInputAction.next,
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );

    final phoneTxt = TextField(
      onTap: () {},
      controller: txtPhone,
      textInputAction: TextInputAction.next,
      obscureText: false,
      keyboardType: TextInputType.phone,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Phone',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );

    final passwordTxt = TextField(
      onTap: () {},
      controller: txtPassword,
      obscureText: true,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );

    final signupButton = Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(40),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text(
          'Sign up',
          style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        minWidth: MediaQuery.of(context).size.width,
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xf5f4f4f4),
      body: Center(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 35.0, right: 35.0),
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: nameTxt,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: emailTxt,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: phoneTxt,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: passwordTxt,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        width: 200.0,
                        child: signupButton,
                      ),
                    ),
                    SizedBox(
                      height: 120.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.montserrat(
                              color: Colors.blue,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
