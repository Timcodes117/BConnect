// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              // margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              height: 400,
              // decoration: BoxDecoration(
              //   image: DecorationImage(image: AssetImage("lib/assets/loginhero.png"), fit: BoxFit.cover),
              // ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("lib/assets/store.png", fit: BoxFit.contain, width: double.infinity, height: 300,),
                    Text(
                      "Business",
                      style: TextStyle(
                          color: Color.fromARGB(255, 54, 3, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          Center(
            child: Column(
              children: [
                InputField(
                  inputicon: HeroiconsSolid.envelope,
                  placeholder: "Email",
                  secured: false,
                ),
                InputField(
                  inputicon: HeroiconsSolid.lockClosed,
                  placeholder: "password",
                  secured: true,
                ),
                Divider(
                  color: Colors.transparent,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style:
                            TextStyle(color: Color.fromARGB(255, 54, 3, 255)),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                            backgroundColor: Color.fromARGB(255, 54, 3, 255),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: Text("Login"))),
                            Divider(
                  color: Colors.transparent,
                ),
                    Divider(
                  color: Colors.transparent,
                ),
                        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?  ",
                        style:
                            TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: ()=> Navigator.pushReplacementNamed(context, '/signup'),
                        child: Text(
                          "Signup",
                          style:
                              TextStyle(color: Color.fromARGB(255, 54, 3, 255)),
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final inputicon, placeholder, controller, secured;
  InputField(
      {required this.inputicon,
      this.placeholder,
      this.controller,
      required this.secured});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width - 50,
      height: 60,
      decoration: BoxDecoration(
          color: Color.fromARGB(13, 53, 3, 255), borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(inputicon),
          SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: secured,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: placeholder,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          )
        ],
      ),
    );
  }
}
