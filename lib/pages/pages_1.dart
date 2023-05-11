import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/pages_2.dart';

class MyHomePageOne extends StatefulWidget {
  const MyHomePageOne({super.key});

  @override
  State<MyHomePageOne> createState() => _MyHomePageOneState();
}

class _MyHomePageOneState extends State<MyHomePageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Image(
                      image: AssetImage("assets/images/img.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Transform.rotate(
                      angle: pi / -2,
                      child: Column(
                        children: [
                          const Text(
                            "Watches",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 5,),
                          Container(height: 2,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),)
                        ],
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                  Transform.rotate(
                      angle: pi / -2,
                      child: const Text(
                        "Macbooks",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                  Transform.rotate(
                      angle: pi / -2,
                      child: const Text(
                        "iPhones",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  const SizedBox(
                    height: 250,
                  ),
                  const Icon(
                    CupertinoIcons.home,
                    size: 27,
                    color: Color(0xFFFAFBFA),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 200,
                        ),
                        Icon(
                          CupertinoIcons.search,
                          size: 27,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Text("Apple",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    const Text("Watches",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w500),),
                    const SizedBox(height: 50,),
                    GestureDetector(
                      onTap: (){
                        debugPrint("onTap : images");
                        navBarTwo(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/img_1.png"),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    const SizedBox(height: 30,),

                    const Text("Series 3",style: TextStyle(fontSize: 16,fontFamily: "Poppins",color: Colors.black,fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),

                    const Text("The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                    const SizedBox(height: 10,),
                    const Text("\$295.00",style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: "Poppins",fontWeight: FontWeight.w600),),
                    const SizedBox(height: 60,),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_3.png"),
                              fit: BoxFit.contain)),
                    ),
                    const SizedBox(height: 30,),

                    const Text("Series 5",style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: "Poppins",fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),

                    const Text("The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations:[]);
  }
}
void navBarTwo(BuildContext context) => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const MyHomePageTwo()),
);





