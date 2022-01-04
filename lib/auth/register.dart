import 'package:flutter/material.dart';
import 'package:tracker_kidz/auth/login.dart';
import 'package:tracker_kidz/home_screen/navigation_screen.dart';

class RegisterScreen extends StatelessWidget {
  Color kPrimaryColor = Color(0xFF6F35A5);
  Color kPrimaryLightColor = Color(0xFFF1E6FF);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.network(
              "https://image.freepik.com/free-vector/sign-up-concept-illustration_114360-7865.jpg",
              height: size.height * 0.45,
            ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(29),
          ),
          child: TextField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: kPrimaryColor,
              ),
              hintText: "Email",
              border: InputBorder.none,
            ),
          ),
        ),
          Container(
          margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            Icons.password,
            color: kPrimaryColor,
          ),
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    ),


    ElevatedButton(
    child: Text(
    "Register",
    style: TextStyle(color: Colors.white),
    ),
    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>NavScreen())); },
    style: ElevatedButton.styleFrom(
    primary: kPrimaryColor,
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    textStyle: TextStyle(
    color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
    ),

            SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Already have an Account ? ",
                style: TextStyle(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          ],
        ),
      ),
    );
  }
}