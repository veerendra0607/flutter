import 'package:flutter/material.dart';
import 'package:health/findDoctor.dart';

class Doctor_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor"), backgroundColor: Colors.black),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  padding: EdgeInsets.only(top: 100, left: 5),
                  color: Colors.deepPurpleAccent,
                  height: 250,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Chose The Doctor You want,',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: RaisedButton(
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(
                    color: Colors.amberAccent,
                    width: 2,
                    style: BorderStyle.solid),
              ),
              splashColor: Colors.amberAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => Find_Doctor_Session()));
              },
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image.network("https://i.gifer.com/6Gs.gif"),
          ),
        ],
      ),
    );
  }
}

//Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 20);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
