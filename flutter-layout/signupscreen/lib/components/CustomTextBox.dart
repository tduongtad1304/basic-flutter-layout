// ignore_for_file: prefer_initializing_formals, must_be_immutable

import 'package:flutter/material.dart';
import 'package:signupscreen/components/PhoneField.dart';

class CustomTextBox extends StatefulWidget {
  dynamic hintText;
  dynamic labelText;
  dynamic errorString;

  CustomTextBox(dynamic hintText, dynamic labelText, dynamic errorString,
      {Key? key})
      : super(key: key) {
    this.hintText = hintText;
    this.labelText = labelText;
    this.errorString = errorString;
  }

  @override
  _CustomTextBoxState createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) => widget.labelText != 'Password' &&
          widget.labelText != 'Confirm Password' &&
          widget.labelText != 'Email' &&
          widget.labelText != 'Phone number'
      ? TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return widget.errorString;
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            labelStyle: const TextStyle(
              fontSize: 19.5,
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
        )
      : widget.labelText == 'Email'
          ? TextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return widget.errorString;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.hintText,
                labelText: widget.labelText,
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
            )
          : const Text('Error');
}
