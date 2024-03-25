import 'package:app/material.dart/global.dart';
import 'package:app/material.dart/routes.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          color: Maincolor,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [Icon(Icons.slideshow_rounded,color: Colors.blue,size: 20,),
              SizedBox(width: 130,),
              Text("Wallet",style: TextStyle(color: Colors.grey,fontSize: 18),)
],
              ),
              SizedBox(height: 55,),
              Container(
                child:  Image(image: AssetImage("assets/images/profilr.png"),
                   fit: BoxFit.cover,),
              ),
              SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                  color: secondcolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text("Top up",style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                          radius: 20,
                               child: CircleAvatar(
                                 backgroundImage: AssetImage("assets/images/bank.png"),
                                 radius: 10,
                                 backgroundColor: Colors.blue,
                               ),
                          
                          backgroundColor: Colors.blue,
                        ),
                        Text("Bank",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                          radius: 20,
                         child: CircleAvatar(
                           backgroundImage: AssetImage("assets/images/Data.png"),
                           radius: 10,
                          backgroundColor: Colors.blue,
                         ),
                          backgroundColor: Colors.blue,
                        ),
                        Text("Transfer",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                          radius: 20,
                         child: CircleAvatar(
                           backgroundImage: AssetImage("assets/images/Card.png"),
                           radius: 10,
                          backgroundColor: Colors.blue,

                         ),
                          backgroundColor: Colors.blue,
                        ),
                        Text("Card",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ],
                    ),
                  SizedBox(height: 20,),
                  ],
                ),
                
              ),
              SizedBox(height: 50,),
              Container(
                child: Column(
                  children: [
                    Container(
                      
                      child:Row(
                        children: [
                           Text("Transaction History",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 7,),
                    Container(
                      color: secondcolor,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text("Delivery fee",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("July 7,2022",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Text("-N3,000.00",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      color: secondcolor,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text("Delivery fee",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("July 7,2022",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Text("-N2,000.00",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      color: secondcolor,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text("Top up",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("July 28,2022",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Text("N1,000.00",style: TextStyle(color: Colors.green),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      color: secondcolor,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text("Delivery fee",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("July 25,2022",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Text("-N2,000.00",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      color: secondcolor,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text("Top up",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("July 25,2022",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Text("N5,000.00",style: TextStyle(color: Colors.green),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      color: secondcolor,
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text("Delivery fee",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("July 17,2022",style: TextStyle(color: Colors.grey,fontSize: 12),)
                            ],
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Text("-N4,000.00",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    
                  ],
                ),
              ),
              


              
              
            ],
            
          ),
        ),


      ),
       bottomNavigationBar: Container(
      color:secondcolor,
      height: 65,
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
      children: [
        Column(
          
          children: [
              
            
            Icon(Icons.home,color:Colors.white,size: 30,),
            Text("Home",style: TextStyle(color: Colors.white),)
          ],
        ),
        Column(
          children: [
           
            Icon(Icons.wallet,color:Colors.blue,size: 30,),
            Text("Wallet",style: TextStyle(color: Colors.blue),)
          ],
        ),
         InkWell(
              onTap: ()=>{
                   Navigator.of(context).pushNamed(MyRoutes.TrackRoute),
              },
                child: Container(
                  child: Column(
                    children: [ 
                      Icon(Icons.track_changes,color:Colors.white,size: 30,),
            Text("Track",style: TextStyle(color: Colors.white),), 
            ],
                  ),
                ),
              ),
        
        
              InkWell(
              onTap: ()=>{
                   Navigator.of(context).pushNamed(MyRoutes.ProfileRoute),
              },
                child: Container(
                  child: Column(
                    children: [ 
                      Icon(Icons.person,color:Colors.white,size: 30,),
            Text("Profile",style: TextStyle(color: Colors.white),), 
            ],
                  ),
                ),
              ),
            
            
            
           
          
        
        
        
        

      ],
     ),
     )
      
    );
  }
}