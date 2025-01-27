import 'package:e_commerce_app/Pages/Login_page.dart';
import 'package:e_commerce_app/Pages/Profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Create_account extends StatelessWidget {
  const Create_account({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Create account",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
             SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Create on account so you can explore all\n                     the existing jobs...",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: " Enter your email..", 
                  hintStyle: TextStyle(color: Colors.grey      ),
                  fillColor: Colors.amber,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade900)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: " Enter your password..",
                    hintStyle: TextStyle(color: Colors.grey      ),
                  fillColor: Colors.amber,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade900)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
            ),
               SizedBox(
              height: 10,
            ),

 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Confirm password..",
                    hintStyle: TextStyle(color: Colors.grey      ),
                  fillColor: Colors.amber,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade900)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
            ),







         
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(Profile_setup());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Center(
                    child: Text(
                  "Sign UP",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
 SizedBox(
              height: 20,
            ),
            
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               
                  GestureDetector(
                    onTap: () {
                  Get.to(Profile_setup());
                    },
                    child: Text(
                      " Already have an account!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                       
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}