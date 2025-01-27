import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Full_watch.dart';

class Ui_helper {
  static Custom_big_Box(String offertext,String imageUrl,String brandname) {
    return GestureDetector( 
      onTap: () {
        Get.to(Full_watch());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade800,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      offertext,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              Container(
                height: 120,
                width: 200,
                color: Colors.amber,
                child: Image.asset(
                       imageUrl,
                 // "assets/images/watch2.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Text(
                brandname,
              //  "Brand Name:  Bomberg",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Price-00",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Custom_Box(IconData icons) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 70,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
        child: Icon(
          icons,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
