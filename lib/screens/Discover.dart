// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: Colors.transparent,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 50),
            child: Text(
              "Discover",
              style: TextStyle(fontSize: 35, color: Color.fromARGB(255, 54, 3, 255), fontWeight: FontWeight.normal),
            ),
          ),
          Divider(color: Colors.transparent,),
          Divider(color: Colors.transparent,),
           Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(HeroiconsOutline.magnifyingGlass, color: Colors.grey.shade500,),
                      InputField(
                        secured: false,
                        placeholder: "Search vendor...",
                      )
                    ],
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }
}


class InputField extends StatelessWidget {
  final placeholder, controller, secured;
  InputField({this.placeholder, this.controller, required this.secured});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 60,
      decoration: BoxDecoration(
          // border: Border.lerp(\),
          border: Border(bottom: BorderSide.none),
          // border: ,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon(inputicon),
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