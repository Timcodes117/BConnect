// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';

class Signup extends StatefulWidget {
  Signup({super.key});
  int currentForm = 1;
  int currentFormIndex = 1;

  String accountType = "Individual";

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                ),
                Center(
                    child: Text(
                  "Create account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                )),
                Divider(
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ActiveForm(
                      index: 1,
                      label: "Personal Info",
                      formIndex: widget.currentForm,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 100,
                      height: 2,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                    ActiveForm(
                      index: 2,
                      label: "Security",
                      formIndex: widget.currentForm,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 100,
                      height: 2,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                    ActiveForm(
                      index: 3,
                      label: "Finish",
                      formIndex: widget.currentForm,
                    ),
                  ],
                ),
                //  Image.asset("lib/assets/working.png", fit: BoxFit.contain, width: double.infinity, height: 00,),
                Container(
                  width: double.infinity,
                  height: 50,
                ),
                Text("${widget.currentFormIndex} of 5",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                Divider(
                  color: Colors.transparent,
                ),
                widget.currentFormIndex == 1 ?
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "What's your email address?",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 54, 3, 255)),
                    )),
                Divider(
                  color: Colors.transparent,
                ),
                Center(
                    child: InputFieldBordered(
                  inputicon: HeroiconsOutline.envelope,
                  secured: false,
                  placeholder: "email address",
                )
                )
                    ],
                   )
                 : Container() ,
                widget.currentFormIndex == 2 ?
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "Do you own a business?",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 54, 3, 255)),
                    )),
                Divider(
                  color: Colors.transparent,
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 50,
                          child: ElevatedButton(onPressed: () {
                            setState(() {
                              widget.accountType = "Business";
                            });
                          }, child: Text("Yes", style: TextStyle(color: widget.accountType == "Business" ? Colors.white : Colors.grey.shade900),), style: ElevatedButton.styleFrom(elevation: 0.0,  backgroundColor: widget.accountType == "Business" ? Color.fromARGB(255, 54, 3, 255)  : Colors.grey.shade100),),
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 50,
                          child: ElevatedButton(onPressed: () {
                            setState(() {
                              widget.accountType = "Individual";
                            });
                          }, child: Text("No", style: TextStyle(color: widget.accountType == "Individual" ? Colors.white : Colors.grey.shade900),), style: ElevatedButton.styleFrom(elevation: 0.0, backgroundColor: widget.accountType == "Individual" ? Color.fromARGB(255, 54, 3, 255) : Colors.grey.shade100),),
                        ),
                      ],
                    )
                )
                    ],
                   )
                 : Container() ,
                 widget.currentFormIndex == 3 && widget.accountType == "Individual" ?
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "What's your name?",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 54, 3, 255)),
                    )),
                Divider(
                  color: Colors.transparent,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputField(inputicon: HeroiconsOutline.user, secured: false, placeholder: "first name",),
                      InputField(inputicon: HeroiconsOutline.user, secured: false, placeholder: "last name",),
                    ],
                  ),
                )
                    ],
                   )
                 : Container() ,
                 widget.currentFormIndex == 3 && widget.accountType == "Business" ?
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      "Tell us about your business!",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 54, 3, 255)),
                    )),
                Divider(
                  color: Colors.transparent,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputField(inputicon: HeroiconsOutline.briefcase, secured: false, placeholder: "Business name",),
                      InputField(inputicon: HeroiconsOutline.mapPin, secured: false, placeholder: "Location",),
                      InputField(inputicon: HeroiconsOutline.mapPin, secured: false, placeholder: "Country",),
                      InputField(inputicon: HeroiconsOutline.mapPin, secured: false, placeholder: "City",),
                      InputField(inputicon: HeroiconsOutline.documentText, secured: false, placeholder: "Description",),
                      InputField(inputicon: HeroiconsOutline.square3Stack3d, secured: false, placeholder: "Category",),
                    ],
                  ),
                )
                    ],
                   )
                 : Container() ,
                Container(
                  width: double.infinity,
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: widget.currentFormIndex > 1 ? SizedBox(
                          width: 60,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  widget.currentFormIndex -= 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  backgroundColor: Colors.grey.shade100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: Icon(
                                HeroiconsSolid.arrowLeft,
                                color: Color.fromARGB(255, 54, 3, 255),
                              ))) : null,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widget.currentFormIndex += 1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor:
                                    Color.fromARGB(255, 54, 3, 255),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            child: Text("Next"))),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                ),
              ]),
        ),
      ),
    );
  }
}

class InputFieldBordered extends StatelessWidget {
  final inputicon, placeholder, controller, secured;
  InputFieldBordered(
      {required this.inputicon,
      this.placeholder,
      this.controller,
      required this.secured});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width - 40,
      height: 60,
      decoration: BoxDecoration(
          // border: Border.lerp(\),
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

class ActiveForm extends StatelessWidget {
  final label;
  int formIndex, index;
  ActiveForm(
      {super.key,
      required this.index,
      required this.label,
      required this.formIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: formIndex >= index
                  ? Color.fromARGB(255, 54, 3, 255)
                  : Colors.grey.shade300),
          child: Center(
              child: Text(
            index.toString(),
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
        Text(
          label,
          style: TextStyle(
              color: formIndex >= index
                  ? Color.fromARGB(255, 54, 3, 255)
                  : Colors.grey.shade400),
        )
      ],
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
