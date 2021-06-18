import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SyncContact(),
    );
  }
}

class SyncContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(children: [
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 50),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/d3.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 50),
              child: Column(children: [
                Text('Welcome',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w100)),
                Text('Zlan Lukalu')
              ]),
            ),
            Container(
                margin: EdgeInsets.only(left: 150, top: 50),
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200]),
                child: Icon(Icons.notification_important_outlined))
          ]),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 70,
            width: 330,
            child: Row(
              children: [
                Icon(
                  Icons.search_off_outlined,
                  color: Colors.grey[400],
                ),
                Text(
                  'Search Barber',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)),
          ),
          Row(children: [
            Column(children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.dashboard_outlined),
                  radius: 50,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text('shaving'))
            ]),
            Column(children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.cut_outlined),
                  radius: 50,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text('HairCut'))
            ]),
            Column(children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.dashboard_outlined),
                  radius: 50,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Coloring'))
            ])
          ]),
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 30),
              height: MediaQuery.of(context).size.height / 5,
              width: 350,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Get free Beard Growth',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text('Essential Liquid',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text('claim it until feb 20, in all barberShop',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w200)))
                  ]),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Text('Nearby')),
              Container(
                  margin: EdgeInsets.only(right: 20, top: 30),
                  child:
                      Text('Show All', style: TextStyle(color: Colors.orange))),
            ],
          ),
          SizedBox(height: 30),
          Column(children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 60),
                        child: Text(
                          'BarberKing',
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          
                            margin: EdgeInsets.only(left: 20),
                            child: Text('OPEN NOW',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 12))),
                        SizedBox(width: 20),
                        Icon(
                          Icons.alarm_add_outlined,
                          color: Colors.grey[400],
                        ),
                        Text(
                          '09AM-10PM',
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 11),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star_border_outlined, color: Colors.orange),
                        Text('4.7'),
                        Container(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star_half,
                              color: Colors.orange,
                            ),
                            Text('1,5km away')
                          ],
                        ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ]),
       Container(
         margin: EdgeInsets.only(top:80),
         height: 90 ,
         width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
           color: Colors.green,
        ),
       ) ]),
      ),
    ));
  }
}
