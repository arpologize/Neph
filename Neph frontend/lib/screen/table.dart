import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neph/screen/createplan.dart';
import 'package:neph/screen/home.dart';
import 'package:neph/screen/plansuccess.dart';

class Tableex extends StatefulWidget {
  @override
  _TableexState createState() => _TableexState();
}

class _TableexState extends State<Tableex> {
  //Medthod

  Widget returnpage() {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: const Color(0xff394548),
            ),
            color: Colors.teal.shade900,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Sucplan()));
            }),
      ),
    );
  }

  Widget whitebackground(String date, String month) {
    return Container(
      width: 90,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.0),
        color: Colors.lightBlue.shade50,
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(3, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 30,
              color: const Color(0xff394548),
              height: 0.8,
            ),
            children: [
              TextSpan(
                text: date,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: month,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget whitebackground2(String day) {
    return Container(
      width: 90,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.0),
        color: Colors.lightBlue.shade50,
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(3, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 30,
              color: const Color(0xff394548),
              height: 0.8,
            ),
            children: [
              TextSpan(
                text: day,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget exercisename() {
    return Container(
      width: 170,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(3, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 30,
              color: const Color(0xff394548),
              height: 0.8,
            ),
            children: [
              TextSpan(
                text: 'Bench Press',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget exercisebackground() {
    return Container(
        width: 300,
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.0),
          color: Colors.lightBlue.shade50,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(3, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 50, top: 13),
                  child: exercisename(),
                ),
                Text(
                  'Done',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 18,
                    color: const Color(0x7d394548),
                    fontWeight: FontWeight.w700,
                    height: 1.8461538461538463,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            //imageex()
          ],
        ));
  }

  Widget imageex() {
    return Container(
      width: 50,height: 25,
      child: Image(image: AssetImage('images/benchpress.png')),
    );
  }

  Widget topic(String day, String date, String month, String type) {
    return Row(children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: whitebackground2(day),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: whitebackground(date, month),
          ),
        ],
      ),
      SizedBox(
        width: 40.0,
      ),
      Column(
        children: [
          Text(
            'Workout',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 34,
              color: const Color(0xff394548),
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            type,
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 24,
              color: const Color(0xff394548),
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ]);
  }

  Widget blueboxadd(String day, String date, String month) {
    return Container(
        width: 327.0,
        height: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xffd7f0f0),
          boxShadow: [
            BoxShadow(
              color: const Color(0x20000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              whitebackground2(day),
              SizedBox(
                height: 5.0,
              ),
              whitebackground(date, month),
            ],
          ),
          SizedBox(
            width: 60.0,
          ),
          IconButton(
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.black,
              ),
              color: Colors.teal.shade900,
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => Profile()));
              }),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            //decoration: BoxDecoration(color: Colors.white),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  returnpage(),
                  topic(
                    'Mon',
                    '9\n',
                    'Dec',
                    'Day 12',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  exercisebackground()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
