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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(
              width:341,
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined),
                    filled: true,
                    fillColor: Color.fromRGBO(0, 27, 59, 1),
                    labelText: '   Search services',
                    contentPadding: EdgeInsets.symmetric(vertical: 18.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(7.0),
              child: Container(
                width: 341,
                height: 91,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/hellobg.png")
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello Ken",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          )),
                      Text("We hope you are having a good time",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text('Special for you',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(236, 128, 0, 1)
              ),) ,
            Container(
              width: 341,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/techmeetup.png")
                          ),
                        ),),
                    ),
                    SizedBox(width: 12.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/loverevolution.png")
                          ),
                        ),),
                    ),
                    SizedBox(width: 12.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/workhard.png")
                          ),
                        ),),
                    ),
                    SizedBox(width: 12.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/genius.png")
                          ),
                        ),),
                    ),
                    SizedBox(width: 12.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/cookedup.png")
                          ),
                        ),),
                    ),
                  ],),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23.0),
              child: Text('What would you like to do?',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(5, 96, 250, 1)
                ),),
            ),
            Container(
              width:341,
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 159,
                        width: 159,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color.fromRGBO(0, 27, 59, 1),
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        height: 159,
                        width: 159,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color.fromRGBO(0, 27, 59, 1),
                        ),)
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(children: [
                    Container(
                      height: 159,
                      width: 159,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(0, 27, 59, 1),
                      ),),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      height: 159,
                      width: 159,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(0, 27, 59, 1),
                      ),
                    )
                  ],),
                  SizedBox(
                    height: 23,
                  ),
                  Row(children: [
                    Container(
                      height: 159,
                      width: 159,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(0, 27, 59, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 159,
                      width: 159,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(0, 27, 59, 1),
                      ),)
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
