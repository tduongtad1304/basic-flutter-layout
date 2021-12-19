// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProFileUI extends StatelessWidget {
  const ProFileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.7,
                  image: AssetImage("images/avatar.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment(0.0, 2.5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/cover1.jpg"),
                    radius: 70.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                'Thai Duong Tad',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              padding: EdgeInsets.only(
                left: 15.0,
                right: 5.3,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      // border: Border.all(),
                      //tron shadow 3 mau thanh shadow mau cyan
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0000aaaa),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Color(0xff0feaff),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                          blurStyle: BlurStyle.outer,
                        ),
                        BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'images/feedback-svgrepo-com.svg',
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Information',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.cyanAccent.shade400.withAlpha(190),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      // border: Border.all(),
                      //tron shadow 3 mau thanh shadow mau cyan
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0000aaaa),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Color(0xff0feaff),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                          blurStyle: BlurStyle.outer,
                        ),
                        BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'images/setting-svgrepo-com.svg',
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.cyanAccent.shade400.withAlpha(190),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 11),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      // border: Border.all(),
                      //tron shadow 3 mau thanh shadow mau cyan
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0000aaaa),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Color(0xff0feaff),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                          blurStyle: BlurStyle.outer,
                        ),
                        BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 150,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'images/logout-svgrepo-com.svg',
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.cyanAccent.shade400.withAlpha(190),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Created By @Tad on December 18th, 2021',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
