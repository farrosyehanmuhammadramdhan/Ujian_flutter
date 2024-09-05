// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app_1/pages/page_3.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Image.asset('images/image_2.jpg', fit: BoxFit.fill,),
          SizedBox(height: 100,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), right: Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  'Daily Vaccine Schedule',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Vaccine doses are available every weekday, and make sure you miss getting the first dose',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Skip')),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PageThree();
                          }));
                        },
                        style: ButtonStyle(),
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
