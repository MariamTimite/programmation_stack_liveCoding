import 'package:flutter/material.dart';

void main() {
  runApp(StackApp());
}

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Supperpo(),
    );
  }
}

class Supperpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Flexible(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("images/paul.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              child: Icon(Icons.close_outlined,
                                  color: Colors.red, size: 60),
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(60))),
                          Container(
                              child: Icon(Icons.favorite_border_outlined,
                                  color: Colors.white, size: 70),
                              height: 90,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(70))),
                          Container(
                              child: Icon(Icons.star,
                                  color: Colors.pink, size: 60),
                              height: 60,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(60)))
                        ]),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    width: 400,
                    height: 100,
                  ))
            ],
          ),
        ),
        Flexible(
            child: Row(
          children: [
            Column(children: [
            
            Container(

            child:  Column(children: [

           Text('Paul, 30', style: TextStyle(fontSize: 40, fontWeight:FontWeight.bold) ),
          Text('Graphic designer', style: TextStyle(fontSize: 20,color: Colors.grey[400]))]),

            )
             ]),
           
         
         Container(
           height: 40,
           width: 50,
           
           margin: EdgeInsets.only(left:180, bottom: 350),
           decoration: BoxDecoration(
             color: Colors.indigoAccent,
             borderRadius: BorderRadius.circular(10)
           ),
           child: Icon(Icons.send_outlined))
         
          
          ],
        )

      
        )
      ]),
    );
  }
}
