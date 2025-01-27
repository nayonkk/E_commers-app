import 'package:flutter/material.dart';


class Hello_decoration_box extends StatelessWidget {
  String textoffer;
   String text_order;
   String imageUrl;
  


   Hello_decoration_box(String s, {super.key,
   required this.textoffer,
      required this.text_order,
      required this.imageUrl,
   
   
   
   });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    height: 140,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                    textoffer,
                                      
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Spacer(),
                                    OutlinedButton(
                                        onPressed: () {},
                                        child: Text(
                                       text_order,
                                     
                                     
                                          style: TextStyle(color: Colors.white70),
                                        ))
                                  ],
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage( 
                                       imageUrl
                                      //  "assets/images/doll.jpg"
                                        
                                        
                                        
                                        ),
                                      fit: BoxFit.cover)),
                            ))
                      ],
                    ),
                  ),
    );
  }
}