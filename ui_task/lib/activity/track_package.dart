import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({super.key});

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Image.asset('assets/images/map.png',fit: BoxFit.cover,),

          ),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Tracking Number",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: Color(0xff0560FA),
                      child: Icon(Iconsax.sun,color: Colors.white,size: 21,),
                    ),
                    SizedBox(width: 8,),
                    Text("R-7458-4567-4434-5854",style: TextStyle(color: Color(0xff0560FA),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(height: 16,),
                 Row(
                  children: [
                    Text("Package Status",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Container(
                      height: 17,
                      child: Image.asset('assets/icons/checkbox.png',color: Color(0xff0560FA),),
                    ),
                    SizedBox(width: 7,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Courier requested",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        Row(
                          children: [
                            Text("July 7 2022",style: TextStyle(color: Color(0xffEC8000),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            SizedBox(width: 7,),
                            Text("08:00am",style: TextStyle(color: Color(0xffEC8000),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),


                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Container(
                      height: 17,
                      child: Image.asset('assets/icons/checkbox.png',color: Color(0xff0560FA),),
                    ),
                    SizedBox(width: 7,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Package ready for delivery",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        Row(
                          children: [
                            Text("July 7 2022",style: TextStyle(color: Color(0xffEC8000),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            SizedBox(width: 7,),
                            Text("08:30am",style: TextStyle(color: Color(0xffEC8000),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),


                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Container(
                      height: 17,
                      child: Image.asset('assets/icons/unchecked.png',color: Color(0xff0560FA),),
                    ),
                    SizedBox(width: 7,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Package in transit",style: TextStyle(color: Color(0xff0560FA),fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        Row(
                          children: [
                            Text("July 7 2022",style: TextStyle(color: Color(0xffEC8000),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            SizedBox(width: 7,),
                            Text("10:30am",style: TextStyle(color: Color(0xffEC8000),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),


                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Container(
                      height: 17,
                      child: Image.asset('assets/icons/unchecked.png',color: Color(0xff0560FA),),
                    ),
                    SizedBox(width: 7,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Package delivered",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        Row(
                          children: [
                            Text("July 7 2022",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            SizedBox(width: 7,),
                            Text("10:30am",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),


                  ],
                ),
                SizedBox(height: 12,),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xff0560FA),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: Text("View Package Info",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w700),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
