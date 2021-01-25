import 'package:flutter/material.dart';
import 'login.dart';
import 'main.dart';

class Register_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Register_State();
  }
}

class Register_State extends State<Register_Screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Image.asset(
              "assets/images/free.jpg",
              height: 100,
              width: 200,
            ),
            SizedBox(height: 10.0),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                labelText: "First Name",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "Abc",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                labelText: "Last Name",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "Xyz",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "abc@gmail.com",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "******",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
              splashColor: Colors.amberAccent,
              child: Text("Login"),
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text("Register  Successfully"),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            ctx,
                            MaterialPageRoute(builder: (ctx) => Login_Screen()),
                          );
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                );
              },
            ),
            // RaisedButton(
            //   color: Colors.deepPurpleAccent,
            //   splashColor: Colors.amberAccent,
            //   onPressed: ()
            //   {
            //     Navigator.push(
            //          context,
            //          MaterialPageRoute(
            //            builder: (context) => popup_screen(),
            //          )
            //     );
            //   },
            //   child: Text('Login'),
            // ),
          ],
        ),
      ),
    );
  }
}
