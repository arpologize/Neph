import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neph/screen/payment.dart';
import 'package:neph/screen/plansche.dart';
import 'package:neph/screen/plansuccess.dart';
import 'package:neph/screen/profile.dart';
import 'package:neph/screen/signin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Medthod
  Widget profile() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      IconButton(
          icon: Icon(
            Icons.account_circle,
            size: 90,
            color: Colors.white,
          ),
          color: Colors.teal.shade900,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));
          }),
      SizedBox(
        height: 55,
      ),
      InkWell(
        child: Text(
          "John Doe",
          style: TextStyle(
            fontFamily: 'Trebuchet MS',
            fontSize: 18,
            color: const Color(0xffffffff),
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () {
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => Profile());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
      InkWell(
        child: Text(
          "San Francisco, CA",
          style: TextStyle(
            fontFamily: 'Trebuchet MS',
            fontSize: 15,
            color: const Color(0xffffffff),
          ),
        ),
        onTap: () {
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => Profile());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
      SizedBox(
        height: 15,
      ),
      vipButton()
    ]);
  }

  Widget vipButton() {
    return Container(
      width: 130,
      height: 23,
      child: RaisedButton(
          color: Colors.grey.shade400,
          child: Text('free member',
              style: TextStyle(
                fontFamily: 'Trebuchet MS',
                fontSize: 15,
                color: Colors.black,
              ),
              textAlign: TextAlign.left),
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => Payment());
            Navigator.of(context).push(materialPageRoute);
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }

  Widget planButton() {
    return Container(
      width: 160,
      height: 90,
      child: RaisedButton(
          color: const Color(0xff4f6165),
          child: Text(
            'Plan Schedule',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => Sucplan());
            Navigator.of(context).push(materialPageRoute);
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }

  Widget calButton() {
    return Container(
      width: 160,
      height: 90,
      child: RaisedButton(
          color: const Color(0xff4f6165),
          child: Text(
            'Calories Calculator',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => Plan());
            Navigator.of(context).push(materialPageRoute);
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }

  Widget fucntionrow2() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        planButton(),
        SizedBox(
          width: 20.0,
        ),
        calButton()
      ],
    );
  }

  Widget statButton() {
    return Container(
      width: 340,
      height: 130,
      child: RaisedButton(
          color: const Color(0xff4f6165),
          child: Text(
            'STATS',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.start,
          ),
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => Plan());
            Navigator.of(context).push(materialPageRoute);
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }

  Widget workoutButton() {
    return Container(
      width: 340,
      height: 65,
      child: RaisedButton(
          color: const Color(0xff4f6165),
          child: Text(
            'GO WORKOUT',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.start,
          ),
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => Plan());
            Navigator.of(context).push(materialPageRoute);
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.cyan.shade800, Colors.grey.shade900],
          //colors: [Colors.purple.shade800, Colors.teal.shade600],
        )),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(alignment: Alignment.topRight, child: profile()),
            //showLogo(),
            SizedBox(
              height: 50.0,
            ),
            fucntionrow2(),
            SizedBox(
              height: 50.0,
            ),
            statButton(),
            SizedBox(
              height: 50.0,
            ),
            workoutButton(),

            SizedBox(
              height: 10.0,
            ),
          ],
        )),
      )),
    );
  }
}
