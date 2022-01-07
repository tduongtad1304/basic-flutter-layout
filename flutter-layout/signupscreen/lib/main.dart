// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_this

import 'package:flutter/material.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';
import 'components/CustomTextBox.dart';
import 'components/PhoneField.dart';
import 'components/TabMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sign Up Layout',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Sign Up'),
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
  final _passKey = TextEditingController();
  final _confirmPassKey = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
          size: 17,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black.withAlpha(120),
            fontSize: 20,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withAlpha(30),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TabMenu(
                        'Traveller', Colors.lightBlue.shade300, Colors.white),
                  ),
                  Expanded(
                    child: TabMenu('Guide', Colors.white, Colors.black45),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 40.0,
                right: 40.0,
              ),
              child: Column(
                children: <Widget>[
                  CustomTextBox(
                      'user@gmail.com', 'Email', 'Please input a valid email'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: _passKey,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 8) {
                        return 'Password needs more than 8 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password*',
                      labelText: 'Password', //Password
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x325161ff),
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: _confirmPassKey,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != _passKey.text) {
                        return 'Confirm password is not match password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Confirm Password*',
                      labelText: 'Confirm Password', //Confirm password
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x325161ff),
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        child: CustomTextBox(
                            'First name*', 'First name', 'Invalid first name'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 40,
                        child: CustomTextBox(
                            'Last name*', 'Last name', 'Invalid last name'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PhoneField('Phone number', 'VN'),
                  CheckboxListTileFormField(
                    title: Text(
                      'Agree on our terms & services',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    onSaved: (bool? value) {
                      print(value);
                    },
                    validator: (bool? value) {
                      if (value!) {
                        return null;
                      } else {
                        return 'Please check on the checkbox';
                      }
                    },
                    onChanged: (value) {
                      if (value) {
                        print('ListTile Checked');
                      } else {
                        print('ListTile Not Checked');
                      }
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ElevatedButton(
                      child: Text('Sign Up'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Notification'),
                                content: Text('Sign Up Successfully!'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightBlue.shade300),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.blueGrey),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
