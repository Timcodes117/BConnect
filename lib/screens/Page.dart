import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final platformBrightness = MediaQuery.of(context).platformBrightness;
    String themeMode = platformBrightness == Brightness.dark ? "dark" : "light";

    if (themeMode == "dark" || themeMode == "light") {
    
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: Color.fromARGB(255, 255, 255, 255),
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back_ios),backgroundColor: Colors.transparent, elevation: 0.0,  ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SingleChildScrollView(
        child: Column(children: [
          // header section
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(image: AssetImage("lib/assets/hair3.jpg"), fit: BoxFit.cover)
            ),
            child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: const Color.fromARGB(86, 0, 0, 0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                        "Beauty Salon",
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontWeight: FontWeight.bold,
                            fontSize: 70),
                      ),
                      Text(
                        "lorem ipsum dolor sit et amet. lorem ipsum dolor sit et amet.lorem ipsum dolor sit et amet.",
                        style: TextStyle(color: Colors.grey.shade100),
                      ),
                      Divider(color: Colors.transparent,)
                ],
              ),
            )
          ),
          ),
          Divider(color: Colors.transparent,),
          Divider(color: Colors.transparent,),
          Text("Business type", style: TextStyle(fontSize: 25),),
          Divider(color: Colors.transparent,),
          Text("timcodes117@gmail.com"),
          Divider(color: Colors.transparent,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10,),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                      child: Icon(Icons.call, color: Color.fromARGB(255, 54, 3, 255)),
                    ),),
                    Text("Call", style: TextStyle(color: Color.fromARGB(255, 54, 3, 255)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10,),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                      child: Icon(Icons.info_outline_rounded, color: Color.fromARGB(255, 54, 3, 255)),
                    ),),
                    Text("Info", style: TextStyle(color: Color.fromARGB(255, 54, 3, 255)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10,),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(19, 53, 3, 255),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                      child: Icon(HeroiconsSolid.share, color: Color.fromARGB(255, 54, 3, 255)),
                    ),),
                    Text("Share", style: TextStyle(color: Color.fromARGB(255, 54, 3, 255)))
                  ],
                ),
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text("Products", style: TextStyle(fontSize: 25),)),
          ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ProductsGrid(),
              )
        ]),
      ),
    );
  }
}


class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // wr: MainAxisAlignment.spaceBetween,
      alignment: WrapAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width / 2 - 20,
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade700, borderRadius: BorderRadius.circular(15)),
          ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width / 2 - 20,
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
          ),
        ),
     
      ],
    );
  }
}