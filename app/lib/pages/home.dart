import 'package:app/utilities/global.dart';
import 'package:app/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body:Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child:Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: backgroundcolor,
              child: (
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15,),
                  SizedBox(
                    child: TextField(

                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal:20,vertical: 10),
                        focusedBorder: OutlineInputBorder (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                        ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                        ),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: "Search services",

                        suffixIcon: Align(
                          widthFactor: 0.8,
                          heightFactor: 0.8,
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.search),
                        ),
                        ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                          color: primaryboxcolor,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Ken",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                            Text("We trust you are having a great time",style: TextStyle(color: Colors.white,fontSize: 14),),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.notifications_none_rounded,color: Colors.white,size: 35,)
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Special for you",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600,fontSize: 15),),
                      Spacer(),
                      Icon(Icons.arrow_forward,color: Colors.orange,)
                    ],
                  ),
                  SizedBox(height: 15,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                 decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/frame1.png'),
                                      scale: 1,
                                      fit: BoxFit.cover),
                                ),
                                height: 60,
                                width: 160,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/frame2.png'),
                                      scale: 1,
                                      fit: BoxFit.cover),
                                ),
                                height: 60,
                                width: 160,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/frame3.png'),
                                      scale: 1,
                                      fit: BoxFit.cover),
                                ),
                                height: 60,
                                width: 160,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/frame4.png'),
                                      scale: 1,
                                      fit: BoxFit.cover),
                                ),
                                height: 60,
                                width: 160,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/frame5.png'),
                                      scale: 1,
                                      fit: BoxFit.cover),
                                ),
                                height: 60,
                                width: 160,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("What would you like to do",style: TextStyle(color: Colors.blue,fontSize: (15),fontWeight: FontWeight.w400), ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Row(
                        children: [
                          home_widget(icon: Icons.support_agent_rounded, boldtext: "Customer Care", Text: " Our customer care service line is \n available from 8 -9pm week days and \n 9 - 5 weekends - tap to call us today"),
                          SizedBox(width: 5,),
                          home_widget(icon: Icons.backpack_rounded , boldtext: "Send a package", Text: " Request for a driver to pick up or \n deliver your package for you\n"),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          home_widget(icon: Icons.wallet, boldtext: "Fund your wallet", Text: " To fund your wallet is as easy as ABC, \n make use of our fast technology and \n top-up your wallet today"),
                          SizedBox(width: 5,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal:10 ,vertical:10 ),
                            color: Colors.blue,
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Icon(Icons.directions_car_filled_rounded,color: Colors.white,size:50,),
                                Text("Book a rider",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                Text("  Search for available rider within \n  your area\n",style: TextStyle(color: Colors.white,fontSize:8 ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          home_widget(icon: Icons.person_pin, boldtext: "Enroll as a rider", Text: " A chance for you to earn as you \n become one of our delivery agents,\n enroll and get the necessary trainings \n from  our crew to get started."),
                          SizedBox(width: 5,),
                          home_widget(icon: Icons.person_2_rounded, boldtext: "Refer and Earn", Text: " Refer a friend to our platform\n and  stand the chance of winning\n lots of goodies plus free delivery\n"),
                        ],
                      ),
                    ],
                  )
                ],
               )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
