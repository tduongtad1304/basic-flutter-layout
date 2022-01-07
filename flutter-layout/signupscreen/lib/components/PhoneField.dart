// ignore_for_file: prefer_initializing_formals, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneField extends StatefulWidget {
  dynamic labelText;
  dynamic countryCode;

  PhoneField(dynamic labelText, dynamic countryCode, {Key? key})
      : super(key: key) {
    this.labelText = labelText;
    this.countryCode = countryCode;
  }

  @override
  _PhoneFieldState createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
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
      initialCountryCode: widget.countryCode,
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      onCountryChanged: (phone) {
        print('Country code changed to: ' + phone.countryCode.toString());
      },
    );
  }
}
