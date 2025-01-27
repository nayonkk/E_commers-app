import 'package:e_commerce_app/Pages/Login_page.dart';
import 'package:e_commerce_app/Pages/hello_nayon_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Profile_setup extends StatelessWidget {
  const Profile_setup({super.key});

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
                "Profile Setup",
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
                "Please fill all the details about \n              your profile.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
             CircleAvatar(radius: 40,backgroundColor: Colors.deepPurple,child: Icon(Icons.person,color: Colors.white,size: 60,),),

  SizedBox(
              height: 30,
            ),

       Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                 
    
                decoration: InputDecoration(
                  labelText: "Full name",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: " Enter your full name..",
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
             
                decoration: InputDecoration(
                  labelText: "Adress",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: " Enter your adress..",
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.number,
            
                decoration: InputDecoration(
                
                  labelText: "Phone number",
                  labelStyle: TextStyle(color: Colors.green),
                  hintText: "Confirm phone number..",
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
            GestureDetector(
              onTap: () {
                Get.to(Hello_Nayon());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Center(
                    child: Text(
                  "Complete Setup",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          
          ],
        ),
      ),
    );
  }
}
