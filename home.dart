import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health/doctor.dart';

import 'login.dart';
import 'main.dart';

class popup_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Health App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_shopping_cart_sharp),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
          ] //
          ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Health App'),
              accountEmail: Text('Vhullatti@skycliffit.com'),
              currentAccountPicture: CircleAvatar(
                foregroundColor: Colors.deepPurpleAccent,
                child: Text(
                  'V',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("Calculate BMI"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                }),
            ListTile(
              leading: Icon(
                Icons.accessibility_new,
                color: Colors.deepPurpleAccent,
              ),
              title: Text('Yoga'),
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).push(
                //   // MaterialPageRoute(builder: (context) => Book_Session() ),
                // );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.deepPurpleAccent,
              ),
              title: Text("Logout"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Login_Screen()));
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black87,
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'How Can We take care yourself?',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Doctor_Screen()),
                          );
                        },
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.account_circle,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Find Doctor",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "210 Doctors",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.account_balance,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Find Hospital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "30 Hospital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.add_to_photos,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Appointment",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "50 Available",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "DrugList",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "22 Services",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.deepPurpleAccent,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              padding: const EdgeInsets.all(27),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        //color: Color.fromARGB(100, 255, 244, 214),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.white,
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            backgroundColor: Colors.white,
            title: Text('Doctors'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),
    );
  }
}
