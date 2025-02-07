import 'package:e_commerce_app/Pages/Ui_helper/Top_categories_displat.dart';
import 'package:e_commerce_app/Pages/create_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login here",
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
                "welcome back you've \n       been missed!",
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
                  hintStyle: TextStyle(color: Colors.grey),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: " Enter your password..",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.amber,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade900)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                    title: "PlZ Press Create account ",
                    content: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Cancel"))
                      ],
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Center(
                    child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.snackbar(
                        "Hello brother",
                        "We are going to create page ...",
                        showProgressIndicator: true,
                      );
                      Get.to(Create_account());
                    },
                    child: Text(
                      " Create account!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
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
