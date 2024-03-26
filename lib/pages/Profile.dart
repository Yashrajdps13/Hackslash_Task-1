import 'package:flutter/material.dart';
import 'package:hackslash_task1/utils/color.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
   class  _ProfileState extends State<Profile> {
  bool _switchvalue = true;

   @override

Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _switchvalue ? Color(0xff000d1d) : Colors.white,
        appBar: AppBar(
          elevation: 3.5,
          shadowColor: _switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
          iconTheme:
          IconThemeData(
            color: Color(0xff0560FA),
          ),
          title: Text("Profile",style: TextStyle(fontSize: 16,color: Color(0xffA7A7A7))),
          centerTitle: true,
          backgroundColor:_switchvalue ? Color(0xff001B3B): Colors.white,
        ),

        body:SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 24.0,horizontal: 24.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius:41 ,
                    backgroundColor:  _switchvalue ? Color(0xff000d1d) : Color(0xffCFCFCF),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor:  _switchvalue ? Color(0xff000d1d) : Colors.white10,
                      backgroundImage: AssetImage('assets/images/pic_1.png'),


                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ken Nwaeze",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:_switchvalue ? Colors.white : Colors.black, ),),
                      Text("current balance: N10,712:00",style: TextStyle(color: _switchvalue ? Colors.white : Colors.black)),

                    ],
                  ),
                  Spacer(),
                  Icon(Icons.visibility_off,color: _switchvalue ? Colors.white : Colors.black,)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Enable Dark Mode",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: _switchvalue ? Colors.white : Colors.black),),
                  Spacer(),
                 Switch(value: _switchvalue, onChanged: (newvalue){
                   setState(() {
                     _switchvalue = newvalue;
                   });
                 }),
                ],
              ),
              SizedBox(height: 26,),
              Container(
                 width: 550,
                height: 60,

                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset:Offset(0,3))
                    ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.perm_identity_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Edit Profile",style: TextStyle(fontSize: 16,color:_switchvalue ? Colors.white : Colors.black),),
                          Text("Name, phone no, address, email ...",style: TextStyle(fontSize: 12,color: Color(0xffA7A7A7)),),
                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                width: 550,
                height: 60,

                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:Offset(0,3))
                  ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.edit_document,color: _switchvalue ? Colors.white : Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Statements & Reports",style: TextStyle(fontSize: 16,color: _switchvalue ? Colors.white : Colors.black),),
                          Text("Download transaction details, deliveries",style: TextStyle(fontSize: 12,color: Color(0xffA7A7A7)),),
                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                width: 550,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:Offset(0,3))
                  ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.notifications_none_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Notifications Setting",style: TextStyle(fontSize: 16,color: _switchvalue ? Colors.white : Colors.black),),
                          Text("mute,set location & tracking setting",style: TextStyle(fontSize: 12,color: Color(0xffA7A7A7)),),
                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color:_switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                width: 550,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:Offset(0,3))
                  ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.credit_card_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cards and Bank account Setting",style: TextStyle(fontSize: 16,color:_switchvalue ? Colors.white : Colors.black),),
                          Text("change cards, delete card details",style: TextStyle(fontSize: 12,color: Color(0xffA7A7A7)),),
                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                width: 550,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:Offset(0,3))
                  ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.call_end,color: _switchvalue ? Colors.white : Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Referrals",style: TextStyle(fontSize: 16,color: _switchvalue ? Colors.white : Colors.black),),
                          Text("check no of friends and earn",style: TextStyle(fontSize: 12,color: Color(0xffA7A7A7)),),
                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                width: 550,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:Offset(0,3))
                  ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.perm_identity_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Us",style: TextStyle(fontSize: 16,color: _switchvalue ? Colors.white : Colors.black),),
                          Text("know more about us, terms and conditions",style: TextStyle(fontSize: 12,color: Color(0xffA7A7A7)),),
                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: _switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                width: 550,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow:[
                    BoxShadow(color:_switchvalue ? BackgroundColor1: Color(0xffD1D1D6),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:Offset(0,3))
                  ] ,
                  color: _switchvalue ? Color(0xff001B3B): Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.logout_outlined,color: Colors.red,size:30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8,),
                            child: Text("Log Out",style: TextStyle(fontSize: 18,color:_switchvalue ? Colors.white : Colors.black, ),),
                          ),

                        ],
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,color:_switchvalue ? Colors.white : Colors.black,),
                    ),

                  ],
                ),

              ),




            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(0.0),
          child: BottomNavigationBar(

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: _switchvalue ? Colors.white: Colors.black,),label:'Home',backgroundColor:_switchvalue ? Color(0xff001B3B): Colors.white, ),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined,color: _switchvalue ? Colors.white: Colors.black,),label:'wallet',backgroundColor:_switchvalue ? Color(0xff001B3B): Colors.white,),
              BottomNavigationBarItem(icon: Icon(Icons.car_crash_outlined,color: _switchvalue ? Colors.white: Colors.black,),label:"Track" ,backgroundColor:_switchvalue ? Color(0xff001B3B): Colors.white,),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: _switchvalue ? Colors.white: Colors.black,),label: 'Profile',backgroundColor:_switchvalue ? Color(0xff001B3B): Colors.white,),
            ],
           currentIndex: 3,
            selectedItemColor: BackgroundColor3,
            onTap: (index){
              switch(index){
              case 0:
              Navigator.pushNamed(context, "/" ,arguments: _switchvalue);
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

              ),
        ),
    );
    }

}