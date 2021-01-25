import 'package:flutter/material.dart';
import 'package:health/drstella.dart';
//import 'BookSession.dart';
//import 'Register.dart';
//import 'bmi.dart';
// import 'Popup.dart';
// import 'Welcome.dart';
// import 'drstalan.dart';
// import 'login.dart';
//import 'profile.dart';

void main() {
  runApp(MaterialApp(
    //home: Register_Screen(),

    home: About(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  var result;
  var msg;

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    result = weight / heightSquare;
    print(result);

    setState(() {
      if (result > 30)
        msg = 'Obesity';
      else if (result > 25)
        msg = 'Overweight';
      else if (result > 18.5)
        msg = 'Normal';
      else
        msg = 'Underweight';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('BMI Calculator'),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _heightController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'height',
                hintText: "Enter your Height",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _weightController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'weight',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 30.0),
            Column(
              children: [
                RaisedButton(
                  onPressed: () {
                    calculateBMI();
                    return showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("Alert "),
                        content: Text('Your BMI $result \n\n\nYou are $msg'),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              // Navigator.push(context,MaterialPageRoute(
                              //     builder: (BuildContext context) => popup_screen()));
                            },
                            child: Text("okay"),
                          ),
                        ],
                      ),
                    );
                  },
                  color: Colors.greenAccent,
                  child: const Text('Calculate'),
                  splashColor: Colors.amberAccent,
                ),
                SizedBox(height: 20),
                Text('Your BMI is:' + result.toString()),
                Text('you are $msg'),
                // RaisedButton(
                //   color: Colors.deepPurpleAccent,
                //   onPressed: ()
                //   {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           //builder: (context) => Book_Session(),
                //         )
                //     );
                //   },
                //   child: Text('Go to Fitness'),
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
