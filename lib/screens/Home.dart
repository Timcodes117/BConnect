// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 25,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        HeroiconsOutline.magnifyingGlass,
                        color: Colors.grey.shade500,
                      ),
                      InputField(
                        secured: false,
                        placeholder: "Search vendor...",
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 54, 3, 255),
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                      width: double.infinity,
                      child: Text("tap to explore popular categories")),
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Categories(),
            Divider(
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Top Vendors",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 54, 3, 255),
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                          "explore popular vendors. priority is based on their recent activites.")),
                ],
              ),
            ),
            BusinessView(),
            Divider(
              color: Colors.transparent,
            ),
            BusinessView(),
            Divider(
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_sharp,
                        color: Color.fromARGB(255, 54, 3, 255)),
                    Text(
                      "Connect",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 54, 3, 255)),
                    )
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Text(
                  "Welcome Tim,",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Business.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                child: Icon(
                  HeroiconsOutline.bellAlert,
                  size: 30,
                ),
              ),
            )
          ],
        ),
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

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      HeroiconsOutline.briefcase,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "office",
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.local_pizza_outlined,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "Food",
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      HeroiconsOutline.homeModern,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "Agent",
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.laptop,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "Electr...",
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(Icons.car_rental,
                        color: Color.fromARGB(255, 54, 3, 255)),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "Car",
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.book_outlined,
                      color: Color.fromARGB(255, 54, 3, 255),
                    ),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "Books",
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  SizedBox(
                      width: 50,
                      child: Text(
                        "More",
                      ))
                ],
              )
            ],
          ),
        ));
  }
}

class BusinessView extends StatelessWidget {
  const BusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              image: DecorationImage(
                  image: AssetImage("lib/assets/welcome.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(92, 0, 0, 0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Business Name",
                      style: TextStyle(
                          color: Colors.grey.shade100,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "lorem ipsum dolor sit et amet. lorem ipsum dolor sit et amet.lorem ipsum dolor sit et amet.",
                      style: TextStyle(color: Colors.grey.shade100),
                    ),
                    // Divider(
                    //   color: Colors.transparent,

                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/page");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("View Business"),
                              Icon(Icons.arrow_circle_right_outlined),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor: Color.fromARGB(255, 54, 3, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Divider(
          color: Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: double.infinity,
              child: Text(
                "Products",
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 54, 3, 255),
                    fontWeight: FontWeight.normal),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProducView(),
                ProducView(),
                ProducView(),
                Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_circle_right_outlined),
                        Text("view more")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProducView extends StatelessWidget {
  const ProducView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width / 2 + 100,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("lib/assets/welcome.jpg"), fit: BoxFit.cover)),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Color.fromARGB(61, 0, 0, 0),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 + 30,
                child: Text(
                  "Product Name is too long",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r"$20",
                      style: TextStyle(
                          color: Colors.grey.shade100,
                          fontWeight: FontWeight.normal,
                          fontSize: 25),
                    ),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Add"),
                            Icon(Icons.add_circle),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Color.fromARGB(255, 54, 3, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
