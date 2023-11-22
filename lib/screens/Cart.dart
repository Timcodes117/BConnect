import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(
          height: 100,
          child: Center(child: SizedBox( 
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Cart", style: TextStyle(fontSize: 30),),
            ))),
        ),
                Divider(color: Colors.transparent,),
                Divider(color: Colors.transparent,),
        Image.asset("lib/assets/loginavtr.png", width: double.infinity, height: 300,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text("Your local cart is empty. check later when you have added more items.", 
            style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
          ),
        )
      ],
    );
  }
}