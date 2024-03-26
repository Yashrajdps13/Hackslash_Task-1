import 'package:flutter/material.dart';
import 'package:hackslash_task1/utils/color.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}
class  _HomeState extends State<Home> {


  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff000d1d) ,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 90),
                  SizedBox(
                    height: 44,
                    width: 360,
                    child: TextField(
                      style: TextStyle(fontSize: 12),
                      cursorColor: Color(0xffA7A7A7),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: BackgroundColor2,
                        hintText: 'Search services',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 14),
                        hintStyle:
                            TextStyle(fontSize: 12.0, color: Color(0xffA7A7A7)),
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 110,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color:  BackgroundColor2,
                  ),
                  padding: const EdgeInsets.only(top: 20, bottom: 5, left: 10),
                  child: Row(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6, left: 3),
                          child: Text(
                            'Hello Ken',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text('We trust you are having a great time',
                              style: TextStyle(fontSize: 13, color: Colors.white)),
                        ),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left:65,bottom: 20),
                    child: Icon(Icons.notifications_none,size: 35,color: Colors.white,),
                  )],
                              ),
                            ),
              ),
               SizedBox(height: 30,),
               Container(
                 height: 30,
                 width: 400,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 18,top: 11,right: 10),
                   child: Row(children: [
                     Text("Special for you",style: TextStyle(fontSize: 14,color: Colors.red)),
                     Spacer(flex: 1,),
                     Icon(Icons.navigate_next_outlined,color: Colors.red,),
                   ],),
                 ),
               ),
              SizedBox(height: 10,),
              Container(
                height: 85,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18,right: 4),
                      child: Container(
                        height: 80,
                        width: 170,
                        child: Image(image: AssetImage('assets/images/pic_3.png'),fit: BoxFit.fill,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18,left: 5,bottom: 3),
                      child: Container(
                       height: 76,
                        width: 170,
                        child: Image(image: AssetImage('assets/images/pic_4.png'),fit: BoxFit.fill),
                      ),
                    )
                  ],),

              ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Container(
                height: 30,
                child: Text("What would you like to do",style: TextStyle(fontSize: 14,color: BackgroundColor3),),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  height: 350,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          height:159,
                          width: 159,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: BackgroundColor2,
                          ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(image: AssetImage('assets/images/Group.png'),height: 55,width: 55,),
                                  Text('Customer Care',style: TextStyle(fontSize: 16,color: BackgroundColor3,fontWeight: FontWeight.bold),),
                                  Text('Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today',style: TextStyle(fontSize: 8,color: Colors.white),),

                                ],),
                            )

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16,),
                        child: Container(
                          height:159,
                          width: 159,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: BackgroundColor2,
                          ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 23),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(image: AssetImage('assets/images/Vector (2).png'),height: 55,width: 55,),
                                  Text('Send a package',style: TextStyle(fontSize: 16,color: BackgroundColor3,fontWeight: FontWeight.bold),),
                                  Text('Request for a driver to pick up or deliver your package for you',style: TextStyle(fontSize: 8,color: Colors.white),),

                                ],),
                            )

                        ),
                      ),


                    ],),

                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Container(
                          height:159,
                          width: 159,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: BackgroundColor2,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 23),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(image: AssetImage('assets/images/Vector (3).png'),height: 55,width: 55,),
                                  Text('Fund your wallet',style: TextStyle(fontSize: 16,color: BackgroundColor3,fontWeight: FontWeight.bold),),
                                  Text('To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today',style: TextStyle(fontSize: 8,color: Colors.white),),

                                ],),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Container(
                            height:159,
                            width: 159,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: BackgroundColor3,
                              ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 23),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Image(image: AssetImage('assets/images/Vector (1).png'),height: 55,width: 55,),
                                Text('Book a rider',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                                Text('Search for available rider within your area',style: TextStyle(fontSize: 10,color: Colors.white),),

                              ],),
                            )
                                   
                          ),
                        ),
                      ],),
                    )

                  ],),
                ),
              )
            ],
                      ),
                    ),
                  ),


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(0.0),
        child: BottomNavigationBar(

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'Home',backgroundColor:BackgroundColor1 ),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label:'Wallet',backgroundColor:BackgroundColor1),
            BottomNavigationBarItem(icon: Icon(Icons.car_crash_outlined),label:'Track' ,backgroundColor:BackgroundColor1),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Profile',backgroundColor:BackgroundColor1),
          ],
          currentIndex: 0,
          selectedItemColor: BackgroundColor3,
          onTap: (index){
            switch(index){
              case 0:
                Navigator.pushNamed(context, "/");
                break;
              case 1:
                Navigator.pushNamed(context, "/wallet");
                break;
              case 2:
                Navigator.pushNamed(context, "/track");
                break;
              case 3:
                Navigator.pushNamed(context, "/profile");
                break;
            }
          },

        )
      ),
    );
  }
}
