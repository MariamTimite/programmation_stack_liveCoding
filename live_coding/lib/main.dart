

import 'package:flutter/material.dart';
import 'package:live_coding/synccontact.dart';

void main() {
  runApp(BarberkApp());
}

class BarberkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BarberScreen());
  }
}

class BarberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Flexible(
            child: Container(
          alignment: Alignment.bottomCenter,
          child: CircleAvatar(
              backgroundImage: AssetImage('images/d5.jpg'), radius: 80),
        )),
        Flexible(
            child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Find your friends",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Text(
                      "Find all your friend in one place  \nby syning yours contact list",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 50,
                      width: 300,
                      color: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/d3.jpg'),
                    ),
                    Positioned(
                        left: 50,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/d2.jpg'),
                        )),
                    Positioned(
                        left: 100,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/d4.jpg'),
                        )),
                    Positioned(
                        left: 150,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/d6.jpg'),
                        )),
                    Positioned(
                        left: 200,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/d1.jpg'),
                        )),
                    Positioned(
                        left: 250,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/d3.jpg'),
                        )),
                  ]),
                ]),
                Text('More than 1M people using us',
                    style: TextStyle(fontWeight: FontWeight.w300))
              ]),
        )),
        Flexible(
            child: Column(children: [
          Container(
              color: Colors.white,
              child: Column(children: [
                Container(
                
                  height: 60,
                  width: 300,
                
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                      
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                        ),
                        onPressed: (){

                     Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));     
                        },
                        child: Text("sync contact"),),
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  alignment: Alignment.center,
                  height: 60,
                  width: 300,
                  child: Text('skip for now',
                      style: TextStyle(color: Colors.black)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                      
                )
              ])),
        ])),
      ]),
    );
  }
}

