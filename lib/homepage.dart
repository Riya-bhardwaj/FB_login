import 'package:flutter/material.dart';
import './signup.dart';

class Facebookpage extends StatefulWidget {
  @override
  _FacebookpageState createState() => _FacebookpageState();
}

class _FacebookpageState extends State<Facebookpage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      backgroundColor: Colors.indigo,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          color: Colors.indigo,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: Center(
                    child: new Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: screenWidth,
                  color: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "email address",
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 350,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "password",
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(15.0)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  color: Colors.indigoAccent,
                  width: 350,
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: null,
                    child: new Text(
                      "login",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                new Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Signup()));
                    },
                    child: Container(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 15.0,
                ),
                new Center(
                  child: Text(
                    "Need Help? ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
