import 'package:bconnect/screens/Account.dart';
import 'package:bconnect/screens/Cart.dart';
import 'package:bconnect/screens/Discover.dart';
import 'package:bconnect/screens/Home.dart';
import 'package:bconnect/screens/Notificatons.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';
import 'dart:io';


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

int _selectedTab = 0;

class _AppState extends State<App> {
  final List _screens = [Home(), Discover(), Cart(),  Account() ];

  void _onChange(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 255, 255, 255),
      body: _screens[_selectedTab],
      bottomNavigationBar: CustomBNavBar(changeBar: (index)=> _onChange(index),),
    );
  }
}

class CustomBNavBar extends StatelessWidget {
  final Function(int index) changeBar;

  CustomBNavBar({super.key, required this.changeBar});

  @override
  Widget build(BuildContext context) {
    final platformBrightness = MediaQuery.of(context).platformBrightness;
    String themeMode = platformBrightness == Brightness.dark ? "dark" : "light";

    if (themeMode == "dark" || themeMode == "light") {
    
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: Color.fromARGB(255, 255, 255, 255),
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark));
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
                color: Colors.grey, style: BorderStyle.solid, width: 1)),
        color: Color.fromARGB(255, 255, 255, 255)
            
      ),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: BottomAppBar(
        elevation: 0,
        color:  Color.fromARGB(255, 255, 255, 255),
                  
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BarCon(
                    name: "Home",
                    mode: themeMode,
                    icon: Icons.store_rounded,
                    barIndex: 0,
                    press: (index) {
                     changeBar(index);
                    },
                  ),
                  BarCon(
                    name: "Discover",
                    mode: themeMode,
                    icon: HeroiconsOutline.magnifyingGlass,
                    barIndex: 1,
                    press: (index) {
                     changeBar(index);
                    },
                  ),
                  BarCon(
                    name: "Cart",
                    mode: themeMode,
                    icon: HeroiconsOutline.shoppingCart,
                    barIndex: 2,
                    press: (index) {
                     changeBar(index);
                    },
                  ),
                
                  BarCon(
                    name: "Account",
                    mode: themeMode,
                    icon: HeroiconsOutline.user,
                    barIndex: 3,
                    press: (index) {
                     changeBar(index);
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class BarCon extends StatelessWidget {
  // const BarCon({super.key});
  final name, mode, icon, barIndex;

  final Function(int index) press;

  BarCon(
      {required this.name,
      required this.mode,
      required this.icon,
      required this.barIndex,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press(barIndex);
      },
      child: Container(
        height: 50,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                    Icon(
                      icon,
                      color: _selectedTab == barIndex
                          ? Color.fromARGB(255, 69, 63, 255)
                          : Colors.grey,
                      size: 30,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 12,
                        color: 
                        _selectedTab != barIndex ?
                        mode == "dark"
                            ? Color.fromARGB(255, 235, 235, 235)
                            : Color.fromARGB(244, 25, 25, 25)
                            
                            : Color.fromARGB(255, 69, 63, 255),
                      ),
                    )
               
          ],
        ),
      ),
    );
  }
}
