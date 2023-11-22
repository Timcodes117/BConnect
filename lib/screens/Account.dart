import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("lib/assets/store.png", fit: BoxFit.contain, width: MediaQuery.of(context).size.width - 100,),
        Text(
          "Connect your account!", textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30,  color: Color.fromARGB(255, 33, 33, 33), fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Get full access and control on our app when you sign-in.", textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18,  color: Color.fromARGB(255, 33, 33, 33), fontWeight: FontWeight.normal),
          ),
        ),
        Divider(
          color: Colors.transparent,
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
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            "Create account",
                            style: TextStyle(fontSize: 18),
                          ))),
        Divider(
          color: Colors.transparent,
        ),
        SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              backgroundColor: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            "Sign-in",
                              
                            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 54, 3, 255),),
                          )))
      ]),
    );
  }
}