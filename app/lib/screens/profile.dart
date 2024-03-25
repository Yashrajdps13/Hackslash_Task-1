import 'package:app/material.dart/global.dart';
import 'package:app/material.dart/routes.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondcolor,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title:const Padding(padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
              Icon(Icons.slideshow_rounded,color: Colors.blue,size: 20,),
              SizedBox(width: 100,),
              Text("Profile",style: TextStyle(color: Colors.grey,fontSize: 18),)
          ],
        ),
      ),),
      body: SafeArea(child: SingleChildScrollView(
        
        
       
        
        

        child: Container(
           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
           
          
            color: Maincolor,
          
          
          child: Column(
            
            children: [
              SizedBox(height: 20,),
              Container(
                child:  Image(image: AssetImage("assets/images/profilr.png"),
                   fit: BoxFit.cover,),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  children: [
                    Text("Enable Dark mode",style: TextStyle(color: Colors.white),),
                    Expanded(child: SizedBox(),flex: 1,),
                    
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.account_circle_rounded,color: Colors.white,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("Edit Profile ",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         Text("Name,Phone no,address,email ...",style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              ),
                SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.article_outlined,color: Colors.white,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("Statements & Reports",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         Text("Download transaction details,orders,deliveries",style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              ),
                SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.notifications,color: Colors.white,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("Notification Settings",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         Text("mute,unmute,set location & tracking setting ",style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              ),
                SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.credit_card,color: Colors.white,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("Card & Bank account settings ",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         Text("Change cards,delete card details",style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              ),
                SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.share,color: Colors.white,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("Refferals ",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         Text("check no of friends and earn",style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              ),
                SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.message,color: Colors.white,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("About us",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         Text("Know more about us,terms and conditions ",style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              ),
                SizedBox(height: 20,),
              Container(
                color:secondcolor,
                height: 60,
                child: Row(
                  children: [
                    Icon(Icons.logout,color: Colors.red,size: 33,),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(height: 10,),
                        Text("Log out",style: TextStyle(color: Colors.white,fontSize: 18,),),
                         
                      ],
                    ),
                    Expanded(child: SizedBox(),flex: 1,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    
                  ],
                ),
              )
             
            ],
          ),
        ),
      )),
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
           
            Icon(Icons.wallet,color:Colors.white,size: 30,),
            Text("Wallet",style: TextStyle(color: Colors.white),)
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
                      Icon(Icons.person,color:Colors.blue,size: 30,),
            Text("Profile",style: TextStyle(color: Colors.blue),), 
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