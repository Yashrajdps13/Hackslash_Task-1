import 'package:app/utilities/global.dart';
import 'package:app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        iconTheme:
        IconThemeData(color: Colors.blue),
        leading: Icon(Icons.arrow_back),
        title: Text("Profile", style: TextStyle(color:Colors.grey),),
        centerTitle: true,
        backgroundColor: primaryboxcolor,
      ),
      backgroundColor: backgroundcolor,

      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:AssetImage ("assets/images/nigga.png"),
                    ),
                    SizedBox(width: 10,),
                    Container(

                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ken Nwaeze",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                          Row(
                            children: [
                              Text("Current balance: ",style: TextStyle(color: Colors.white),),
                              Text("N10,712:00",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.visibility_off_outlined,color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  children: [
                    Text("Enable dark Mode", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("darm mode button"),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              prof_widget(icon: Icons.account_circle_outlined, boldtext: "Edit Profile", normaltext: "Name, phone no, address, email "),
              SizedBox(height: 10,),
              prof_widget(icon: Icons.assignment_sharp, boldtext: "Statements & Reports", normaltext: "Download transaction details, orders, deliveries"),
              SizedBox(height: 10,),
              prof_widget(icon: Icons.notifications_none_rounded, boldtext: "Notification Settings", normaltext: "mute, unmute, set location & tracking setting"),
              SizedBox(height: 10,),
              prof_widget(icon: Icons.account_balance_wallet_outlined, boldtext: "Card & Bank account settings", normaltext: "change cards, delete card details"),
              SizedBox(height: 10,),
              prof_widget(icon: Icons.person_2_rounded, boldtext: "Referrals", normaltext: "check no of friends and earn"),
              SizedBox(height: 10,),
              prof_widget(icon: Icons.image, boldtext: "About Us", normaltext: "know more about us, terms and conditions"),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal:15 ,vertical:15 ),
                color: primaryboxcolor,
                alignment: Alignment.centerLeft,
                child:Row(
                  children: [
                    Icon(Icons.logout_outlined, color: Colors.red,),
                    SizedBox(width: 8,),
                    Text("Log Out",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15,),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
