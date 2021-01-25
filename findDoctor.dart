import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Find_Doctor_Session extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Find_Doctor_State();
  }
}

class Find_Doctor_State extends State<Find_Doctor_Session> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Find Your Desired Doctor",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    )),
                  ],
                ),
                padding: const EdgeInsets.only(top: 35, left: 22, right: 5),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ListTile(
                  title: TextFormField(
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(bottom: 15),
                        hintText: "Search for doctors"),
                  ),
                  trailing: Container(
                    child: Icon(
                      Icons.search,
                    ),
                    padding: const EdgeInsets.only(bottom: 10),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.only(left: 10, right: 10),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
                height: 45,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(left: 15, top: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: Card(
                          elevation: 0,
                          color: Colors.deepPurpleAccent,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.5, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child:
                                        Image.asset("assets/images/Dent.png"),
                                    // child: Image.network("https://png.pngtree.com/png-clipart/20190604/original/pngtree-arrow-directions-teeth-png-image_1616558.jpg"),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Dental \n"
                                  "Surgeon",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(
                                    top: 0, right: 0, left: 0),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      child: Card(
                          elevation: 3,
                          color: Colors.deepPurpleAccent,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.5, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child:
                                        Image.asset("assets/images/heart.png"),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "heart \nSurgeon",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(
                                    top: 0, right: 0, left: 0),
                              ),
                            ],
                          )),
                      padding: const EdgeInsets.only(left: 10),
                    ),
                    Container(
                      child: Card(
                          elevation: 3,
                          color: Colors.deepPurpleAccent,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.6, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    // child: Image.asset("assets/images/eyes.png"),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Eye \nSpecialist",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(
                                    top: 0, right: 0, left: 0),
                              ),
                            ],
                          )),
                      padding: const EdgeInsets.only(left: 10),
                    ),
                    Container(
                      child: Card(
                          elevation: 3,
                          color: Colors.deepPurpleAccent,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.5, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    // child: Image.network("https://png.pngtree.com/png-clipart/20190604/original/pngtree-arrow-directions-teeth-png-image_1616558.jpg"),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Dental \nSurgeon",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(
                                    top: 0, right: 0, left: 0),
                              ),
                            ],
                          )),
                      padding: const EdgeInsets.only(left: 10),
                    ),
                    Container(
                      child: Card(
                          elevation: 3,
                          color: Colors.deepPurpleAccent,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.5, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("assets/images/eye.png"),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "heart \nSurgeon",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(
                                    top: 0, right: 0, left: 0),
                              ),
                            ],
                          )),
                      padding: const EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(top: 25),
                height: 100,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Top Doctors",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(left: 15, top: 10),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 75,
                      child: ListTile(
                        leading: Container(
                          child: Image.network(
                            "https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        title: Text(
                          "Dr. Stella Kane",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Heart Surgeon - Flower Hospitals",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      height: 75,
                      child: ListTile(
                        leading: Container(
                          child: Image.network(
                            "https://thumbs.dreamstime.com/b/young-asian-doctor-smiling-handsome-man-wearing-lab-coat-stands-crossed-arms-vector-illustration-157083091.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        title: Text(
                          "Dr. Joseph Cart",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Dental Surgeon - Flower Hospitals",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      height: 75,
                      child: ListTile(
                        leading: Container(
                          child: Image.network(
                            "https://image.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        title: Text(
                          "Dr. Veerendra",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Eye Specialist - SDM Hospitals",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      height: 75,
                      child: ListTile(
                        leading: Container(
                          child: Image.network(
                            "https://image.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        title: Text(
                          "Dr. Sachin",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Eye Specialist - SDM Hospitals",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                height: 143,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
