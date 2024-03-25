import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search Services",
                  hintStyle: TextStyle(
                      color: Color(0xffA7A7A7),
                      fontSize: 12,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400),
                  suffixIcon: Icon(
                    Iconsax.search_normal_1,
                    color: Color(0xffA7A7A7),
                    size: 16,
                  ),
                  fillColor: Theme.of(context).colorScheme.secondary,
                  filled: true,
                  enabled: true,
                ),
                cursorColor: Color(0xffA7A7A7),
                style: TextStyle(color: Color(0xffA7A7A7)),
              ),
              SizedBox(
                height: 24,
              ),
              Stack(children: [
                Container(
                  height: 91,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 252),
                  child: Container(
                    height: 75,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff002858),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(300),
                            topRight: Radius.circular(8))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 75,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff002858),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            topRight: Radius.circular(300))),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 305, vertical: 30),
                  child: Icon(
                    Iconsax.notification,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Ken",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "We trust you are having a great time",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ]),
              SizedBox(
                height: 39,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special for you",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffEC8000),
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Iconsax.arrow_square_right3,
                    color: Color(0xffEC8000),
                    size: 14,
                  ),

                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          color: Color(0xffEC8000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 1),
                        child: Container(
                          height: 61,
                          width: 163,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/ad11.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 13),
                        child: Text(
                          "Tech Meetup\ncoming soon",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 110,
                          bottom: 6,
                          top: 45,
                        ),
                        child: Text(
                          "www.techmeetup",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 5.27),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 64,
                        width: 166,
                        decoration: BoxDecoration(
                          color: Color(0xffEC8000),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 1),
                        child: Container(
                          height: 61,
                          width: 163,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/ad2.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 38,
                                width: 76,
                                decoration: BoxDecoration(
                                    color: Color(0xffED3A3A).withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                    child: Text(
                                  "Love\nRevolution",
                                  style: TextStyle(
                                      color: Color(0xffEBBC2E),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Text("What would you like to do",style: TextStyle(color: Color(0xff0560FA),fontFamily: "Roboto",fontWeight: FontWeight.w500,fontSize: 14),)
                ],
              ),
              SizedBox(height: 19,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 138,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                child: Image.asset('assets/icons/call-center-agent.png',color: Color(0xff0560FA),),
                              ),
                              Text("Customer Care",style: TextStyle(color: Color(0xff0560FA),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              SizedBox(height: 8,),
                              Text("Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 7.45,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24,),
                      Container(
                        height: 138,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Container(
                                height: 35,
                                child: Image.asset('assets/icons/wallet.png',color: Color(0xff0560FA),),
                              ),
                              SizedBox(height: 5,),
                              Text("Fund your wallet",style: TextStyle(color: Color(0xff0560FA),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              SizedBox(height: 8,),
                              Text("To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 7.45,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 138,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Container(
                                height: 35,
                                child: Image.asset('assets/icons/package.png',color: Color(0xff0560FA),),
                              ),
                              SizedBox(height: 5,),
                              Text("Send a package",style: TextStyle(color: Color(0xff0560FA),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              SizedBox(height: 8,),
                              Text("Request for a driver to pick up or deliver your package for you",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 7.45,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 138,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Container(
                                height: 35,
                                child: Image.asset('assets/icons/car.png',color: Color(0xff0560FA),),
                              ),
                              SizedBox(height: 5,),
                              Text("Book a rider",style: TextStyle(color: Color(0xff0560FA),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              SizedBox(height: 8,),
                              Text("Search for available rider within your area",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 7.45,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),

                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
