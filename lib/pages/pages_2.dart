import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/pages_1.dart';

class MyHomePageTwo extends StatefulWidget {
  const MyHomePageTwo({super.key});

  @override
  State<MyHomePageTwo> createState() => _MyHomePageTwoState();
}

class _MyHomePageTwoState extends State<MyHomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {debugPrint("onPressed : arrow_left");
                    navBarOne(context);

                      },
                    icon: const Icon(
                      CupertinoIcons.arrow_left,
                      size: 27,
                      color: Color(0xFF030303),
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black),
                    child:  const Icon(
                        Icons.favorite_border,
                        size: 23,
                        color: Color(0xFFFAFBFA),
                      ),

                  ),
                ],
              ),

              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_1.png"),
                            fit: BoxFit.contain)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 4,width: 20,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100)),),
                      const SizedBox(width: 6,),
                      Container(height: 4,width: 4,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(100)),),
                      const SizedBox(width: 6,),
                      Container(height: 4,width: 4,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(100)),),
                      const SizedBox(width: 6,),
                      Container(height: 4,width: 4,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(100)),),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Series 3",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24,
                    color: Color(0xFF030303),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                "The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                    height: 1.5),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children:  [
                  const Text(
                    "\$295.00",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 22,
                        color: Color(0xFF030303),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {debugPrint("onTap : +");},

                    child: const Text(
                      "+",
                      style: TextStyle(
                        fontFamily: "Poppins",
                          fontSize: 22,
                          color: Color(0xFF030303),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("onTap : PROCEED TO BUY");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: const BoxDecoration(color: Color(0xFF030303)),
                  child: const Text(
                    "PROCEED TO BUY",
                    style: TextStyle(
                      fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFAFBFA)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("onTap : ADD TO CART");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .9,
                  height: 60,
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(width: 2, color: Color(0xFF030303)),
                          vertical: BorderSide(width: 2, color: Color(0xFF030303)))),
                  child: const Text(
                    "ADD TO CART",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF030303)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void navBarOne(BuildContext context) => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const MyHomePageOne()),
);

