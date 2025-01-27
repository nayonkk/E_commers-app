import 'dart:async';

import 'package:e_commerce_app/Pages/Display_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen_page extends StatefulWidget {
  const Screen_page({super.key});

  @override
  State<Screen_page> createState() => _Screen_pageState();
}

class _Screen_pageState extends State<Screen_page> {

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), (){
 Get.to(Display_page());

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: Text(
          "E-commerce App",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
