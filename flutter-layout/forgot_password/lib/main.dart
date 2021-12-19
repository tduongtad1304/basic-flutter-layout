// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Forgot Password Layout',
      home: const MyHomePage(title: 'Forgot your password'),
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
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black.withAlpha(120),
            fontSize: 22,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 25.0,
                left: 35.0,
                right: 35.0,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x34ADFFFF),
                          blurRadius: 50.0,
                          blurStyle: BlurStyle.outer,
                        ),
                        BoxShadow(
                          color: Color(0x525790FA),
                          blurRadius: 50.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      color: Colors.blue.withAlpha(100),
                      borderRadius: BorderRadiusDirectional.circular(
                        15.0,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.blue.shade700,
                          Colors.teal.shade500,
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Please enter the email address associated with your account to submit for resetting your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey.shade700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'user@gmail.com',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                      labelText: 'Email*',
                      labelStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      filled: true,
                      hoverColor: Colors.lightBlueAccent.withAlpha(20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x325161ff),
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ElevatedButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.8,
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _showMaterialDialog();
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlue.shade300,
                        ),
                        shadowColor: MaterialStateProperty.all<Color>(
                          Colors.blueGrey,
                        ),
                      ),
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

  void _showMaterialDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Notification'),
          content:
              Text('Successfully! Check the verify code for reset your password on your Email.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                _dismissDialog();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  _dismissDialog() {
    Navigator.pop(context);
  }
}
