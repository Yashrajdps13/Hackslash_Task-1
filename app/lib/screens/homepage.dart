import 'package:app/material.dart/global.dart';

import 'package:app/screens/profile.dart';
import 'package:app/screens/track.dart';
import 'package:app/screens/wallet.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myIndex=0;
  List<Widget> widgetList = const [
   Wallet(),
   Track(),
   Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: SingleChildScrollView(
       
      child: Container(
        
        
        padding: EdgeInsets.symmetric(horizontal: 20),
        
        color: Maincolor,
        child: Column(children: [
          SizedBox(height: 60,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: secondcolor,

            ),
            
            padding: EdgeInsets.all(10),
            
            child: Row(
              children: [
                Text("Search services", style: TextStyle(fontSize: 16,color: Colors.grey),),
                Expanded(child: SizedBox(),flex: 1),
                Icon(Icons.search,color: Colors.grey,size:26),
              ],

            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:secondcolor,
            ),
            
            child: Row(
              
              
              children: [
               
                Column(
                  

                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Container(
                      
                      child: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                    Text("Hello Ken", style: TextStyle(fontSize: 30,color: Colors.white),),
                    
                    
                           Text("We trust you are havong  a great time",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),

                    )
                   
                    
                    
                  ],
                ),
                Expanded(child: SizedBox(),flex: 1,),
                Icon(Icons.notifications,color: Colors.white,size: 30,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 20,
            child: Row(
              children: [
                Text("Special for you",style: TextStyle(color: Colors.orange),),
                Expanded(child: SizedBox(),flex: 1,),
                 Icon(Icons.slideshow_rounded,color: Colors.orange,size: 20,)
                
              ],
              
            ),
          ),
          SizedBox(height:10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
         child:  Container(
            
            child: Row(
              children: [
              Container(
                
                height: 80,
                width: 150,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    
                    Text("Tech Meetup",style: TextStyle(color: Colors.white,fontSize: 10),),
                      Text("Coming soon",style: TextStyle(color: Colors.white,fontSize: 10),),
                    
                  ],
                ),
               
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/download.png"),
                   fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5),
                  
                  color: Colors.orange,
                
                  
                 ),
                 
                
              ),
              Padding(padding: EdgeInsets.all(10),),
               Container(
                height: 80,
                width: 150,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                    
                                       
                      Text("Love",style: TextStyle(color: Colors.white,fontSize: 10),),
                      Text("Resolution",style: TextStyle(color: Colors.white,fontSize: 10),),
                      

                  ],
                ),
               
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/download (2).png"),
                   fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(10),
                  
                  color: Colors.orange,
                
                  
                 ),
                 
                
              ),
              SizedBox(width: 20,),
               Container(
                
                height: 80,
                width: 150,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  
                 
                ),
               
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Flower.png"),
                   fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5),
                  
                  color: Colors.orange,
                
                  
                 ),
                 
                
              ),
              Padding(padding: EdgeInsets.all(10),),
               Container(
                
                height: 80,
                width: 150,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  
               
                ),
               
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Human.png"),
                   fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5),
                  
                  color: Colors.orange,
                
                  
                 ),
                 
                
              ),
              Padding(padding: EdgeInsets.all(10),),
               Container(
                
                height: 80,
                width: 150,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                    
                    Text("Cooked up",style: TextStyle(color: Colors.white,fontSize: 10),),
                     
                    
                  ],
                ),
               
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Circle.png"),
                   fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5),
                  
                  color: Colors.orange,
                
                  
                 ),
                 
                
              ),
              Padding(padding: EdgeInsets.all(10),),
              ],
            ),
          ),),
          SizedBox(height: 30,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("What would you like to do",style: TextStyle(color: Colors.lightBlue),)
                
              ],
            ),
          ),
          SizedBox(height: 20,),
           Container(
            child: Row(
              children: [
               Container(
               
                width: 150,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                
                decoration: BoxDecoration(
                  
                  color: secondcolor,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(height: 10,),
                    Padding(padding:EdgeInsets.only(left: 10)),
                    Icon(Icons.headset_mic,color:Colors.lightBlue,size: 30,),
                    SizedBox(height: 5,),
                    Text("Customer Care",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("Our customer care service line is ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("available from 8-9pm week days and ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("9-5 weekends-tapto call us today ",style: TextStyle(color: Colors.white,fontSize: 12),)
                

                  ],
                  
                ),
               ),
               SizedBox(width: 15,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 35),
                
                width: 150,
                
                decoration: BoxDecoration(
                  
                  color: secondcolor,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    
                    Padding(padding:EdgeInsets.only(left: 10)),
                    Icon(Icons.source_rounded,color:Colors.lightBlue,size: 30,),
                    SizedBox(height: 5,),
                    Text("Send a package",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("Request for a driver to pick up or deliver your ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text(" package for you",style: TextStyle(color: Colors.white,fontSize: 12),),
                    
                  ],
                  
                ),
               )
              ],
            ),
          ),
          SizedBox(height: 20,),
           Container(
            child: Row(
              children: [
               Container(
               
                width: 150,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                
                
                decoration: BoxDecoration(
                  
                  color: secondcolor,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(height: 10,),
                    Padding(padding:EdgeInsets.only(left: 10)),
                    Icon(Icons.account_balance_wallet,color:Colors.lightBlue,size: 30,),
                    SizedBox(height: 5,),
                    Text("Fund your wallet",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("To fund your wallet is an easy as ABC, ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("make use of our fast technology and top-up ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text(" your wallet today",style: TextStyle(color: Colors.white,fontSize: 12),)
                

                  ],
                  
                ),
               ),
               SizedBox(width: 15,),
               Container(
                
                height: 200,
                width: 150,
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                
                decoration: BoxDecoration(
                  
                  color: Colors.blue,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                   
                    Padding(padding:EdgeInsets.only(left: 10)),
                    Icon(Icons.drive_eta_rounded,color:Colors.white,size: 30,),
                    SizedBox(height: 5,),
                    Text("Book a rider",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("search for available rider within your",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("area",style: TextStyle(color: Colors.white,fontSize: 12),),
                  
                

                  ],
                  
                ),
               ),
              ],
            ),
          ),
           SizedBox(height: 20,),
           Container(
            child: Row(
              children: [
               Container(
                
                width: 150,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                
                
                decoration: BoxDecoration(
                  
                  color: secondcolor,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(height: 10,),
                    Padding(padding:EdgeInsets.only(left: 10)),
                    Icon(Icons.motorcycle,color:Colors.lightBlue,size: 30,),
                    SizedBox(height: 5,),
                    Text("Enroll as rider",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("A chance for you to",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("earn as you become ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("one of our delivery agents, enroll and ",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("get the neccessary training from our crew ",style: TextStyle(color: Colors.white,fontSize: 12),)
                

                  ],
                  
                ),
               ),
               SizedBox(width: 15,),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                
                width: 150,
                height: 200,
                
                decoration: BoxDecoration(
                  
                  color: secondcolor,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    SizedBox(height: 10 ,),
                    Padding(padding:EdgeInsets.only(left: 10)),
                    Icon(Icons.people,color:Colors.lightBlue,size: 30,),
                    SizedBox(height: 5,),
                    Text("Refer & Earn",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("Refer a friend to our",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("platform and stand the ",style: TextStyle(color: Colors.white,fontSize: 12),),
                     Text("chance of winning lots of goodies plus free delivery",style: TextStyle(color: Colors.white,fontSize: 12),),
                    
                  
                

                  ],
                  
                ),
               ),
              ],
            ),
          ),

          



        ],),
      ),




     ),
   

    );
    


  }
}