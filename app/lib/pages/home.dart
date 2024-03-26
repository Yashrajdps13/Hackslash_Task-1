import 'package:flutter/material.dart';

import '../widgets/nav.dart';


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
    body: Padding(
    padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
    child: Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
    TextFormField(
    decoration: InputDecoration(
    suffixIcon: Icon(Icons.search_outlined),
    filled: true,
    fillColor: Color.fromRGBO(0, 27, 59, 1),
    labelText: 'Search services',
    contentPadding: EdgeInsets.symmetric(vertical: 18.0),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5)
    )
    ),
    ),
    Container(
      width: 341,
    height: 91,
    decoration: BoxDecoration(
    image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage("asset/hellobg.png")
    ),
    ),
      child: Column(
        children: [
          Text("Hello Ken",
          style: TextStyle(
          fontSize: 24
          )),
          Text("We hope you are having a good time",
              style: TextStyle(
                  fontSize: 12
              )),
        ],
      ),
    ),
    Text('Special for you',
    style: TextStyle(
      fontSize: 16,
      color: Color.fromRGBO(236, 128, 0, 1)
    ),) ,
        SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            height: 64,
            width: 166,
          decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/techmeetup.png")
          ),
        ),),
            Container(
              height: 64,
              width: 166,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/loverevolution.png")
                ),
              ),),
            Container(
              height: 64,
              width: 166,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("workhard/map.png")
                ),
              ),),
            Container(
              height: 64,
              width: 166,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("genius/map.png")
                ),
              ),),
            Container(
              height: 64,
              width: 166,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("cookedup/map.png")
                ),
              ),),
          ],),
        ),
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Container(
                color: Color.fromRGBO(0, 27, 59, 1),
                height: 159,
                width: 159,
              ),
              Container(
                color: Color.fromRGBO(0, 27, 59, 1),
                height: 159,
                width: 159,)
            ],
          ),
          Row(children: [
            Container(
              color: Color.fromRGBO(0, 27, 59, 1),
              height: 159,
              width: 159,
            ),
            Container(
              color: Color.fromRGBO(0, 27, 59, 1),
              height: 159,
              width: 159,
            )
          ],),
          Row(children: [
            Container(
              color: Color.fromRGBO(0, 27, 59, 1),
              height: 159,
              width: 159,
            ),
            Container(
              color: Color.fromRGBO(0, 27, 59, 1),
              height: 159,
              width: 159,)
          ],)
        ],),
      ),
    )
    ],

    ),
    ),
    );
  }
}
