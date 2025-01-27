import 'package:e_commerce_app/Pages/Ui_helper/Top_categories_displat.dart';
import 'package:e_commerce_app/Pages/Ui_helper/hello_decoration_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hello_Nayon extends StatelessWidget {
  const Hello_Nayon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.amber,
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Nayon kk !',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Let's start shoping.",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Hello_decoration_box("",
                      textoffer: "20% OFF DURING THE WEEKEND ",
                      text_order: "Order Now",
                      imageUrl: "assets/images/doll.jpg"),
                  Hello_decoration_box("",
                      textoffer: "20% OFF DURING THE WEEKEND ",
                      text_order: "Order Now",
                      imageUrl: "assets/images/doll.jpg"),
                  Hello_decoration_box("",
                      textoffer: "20% OFF DURING THE WEEKEND ",
                      text_order: "Order Now",
                      imageUrl: "assets/images/doll.jpg"),
                  Hello_decoration_box("",
                      textoffer: "20% OFF DURING THE WEEKEND ",
                      text_order: "Order Now",
                      imageUrl: "assets/images/doll.jpg"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Not done yet plz wait",
                          titleStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                          middleText: "Waiting process",
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Confirm')),
                              OutlinedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Cancel')),
                            ],
                          ));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Ui_helper.Custom_Box(Icons.wallet),
                  Ui_helper.Custom_Box(Icons.watch),
                  Ui_helper.Custom_Box(Icons.money),
                  Ui_helper.Custom_Box(Icons.catching_pokemon),
                  Ui_helper.Custom_Box(Icons.pets),
                  Ui_helper.Custom_Box(Icons.wallet),
                  Ui_helper.Custom_Box(Icons.watch),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(children: [   
               Ui_helper.Custom_big_Box("50% OFF", "assets/images/watch.jpg", "Brand Name:  Bomberg",),
                Ui_helper.Custom_big_Box("50% OFF", "assets/images/watch2.jpg", "Brand Name:  Bomberg",),
                 Ui_helper.Custom_big_Box("50% OFF", "assets/images/ima.jpg", "Brand Name:  Bomberg",),

                
              ],),
            )
            
          ],
        ),
      ),
    );
  }
}
