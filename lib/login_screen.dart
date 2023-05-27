import 'package:flutter/material.dart';
import 'colors.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  bgImage,
                  height: height * 0.40,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                appName,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                slogan,
                style: TextStyle(color: Colors.orange[800]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Container(
                child: Text(
                  loginString,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [primaryColor.withOpacity(0.3), Colors.transparent],
                  ),
                  border: Border(
                    left: BorderSide(color: primaryColor, width: 3),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: primaryColor,
                  ),
                  labelText: "Email Address",
                  labelStyle: TextStyle(color: primaryColor, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: primaryColor,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: primaryColor, fontSize: 20),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      'Login To Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: width * 0.8,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text(
                        forgetText,
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don't have an account? Create Account",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
