import 'package:flutter/material.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome screen',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/welcome.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
                child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width - 30,
              height: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(235, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 54, 3, 255)),
                        ),
                        Divider(
                    color: Colors.transparent,
                  ),
                        Text(
                          "Find your",
                          style: TextStyle(fontSize: 60),
                        ),
                        Text(
                          "Interests",
                          style: TextStyle(fontSize: 60),
                        ),
                        Divider(
                    color: Colors.transparent,
                  ),
                        Text(
                          "lorem ipsum dolor sit et amet. lorem ipsum dolor sit et amet. ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor: Color.fromARGB(255, 54, 3, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/main');
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontSize: 18),
                          )))
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
