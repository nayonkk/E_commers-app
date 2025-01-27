import 'package:e_commerce_app/Pages/Login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Display_page extends StatelessWidget {
  const Display_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/ima.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Discover your\nDream job here",
              style: TextStyle(
                  letterSpacing: 0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Over the time of one day, Job is given four reports, each informing him that his sheep, servants, and ten children have all died due to thieving intruders or natural disasters.",
                style: TextStyle(
                    letterSpacing: 0,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade900),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
          Get.to(login_page()     );
              
              
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {   
         
        
              
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20)),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Center(
                        child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
