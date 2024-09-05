// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app_1/pages/message.dart';
import 'package:test_app_1/pages/product.dart';


class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Image.asset('images/image_3.jpg'),
          Container(
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), right: Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  'Get a Vaccine Certificate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'There are types of vaccines available to accelerate herd immunity, so that this pandemic will quickly disappear',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ContactPage();
                          }));
                        },
                        child: Text('Skip')),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProductPage();
                          }));
                        },
                        child: Text('Next'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
