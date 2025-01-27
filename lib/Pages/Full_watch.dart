import 'package:flutter/material.dart';

class Full_watch extends StatelessWidget {
  const Full_watch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("assets/images/watch.jpg"),
        ));
  }
}
