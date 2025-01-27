import 'package:e_commerce_app/Pages/Screen_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      
   home:Screen_page(),
   debugShowCheckedModeBanner: false,



    );
  }
}