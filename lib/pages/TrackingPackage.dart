import 'package:flutter/material.dart';
import 'package:hackslash_task1/utils/color.dart';

class TrackingPackage extends StatelessWidget {
  const TrackingPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(0.0),
        child: BottomNavigationBar(

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'Home',backgroundColor:BackgroundColor1 ),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label:'Wallet',backgroundColor:BackgroundColor1),
            BottomNavigationBarItem(icon: Icon(Icons.car_crash_outlined),label:'Track' ,backgroundColor:BackgroundColor1),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Profile',backgroundColor:BackgroundColor1),
          ],
          currentIndex: 2,
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

        ),
      ),
      backgroundColor: BackgroundColor1,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image(image: AssetImage('assets/images/pic_2.png'),width: 390,height: 320,fit: BoxFit.fill,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Tracking Number',style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top:  5),
                child: Row(children: [
                  Icon(Icons.stars_outlined,color: Color(0xff0560FA),),
                  Text('    R-7458-4567-4434-5854',style: TextStyle(fontSize: 16,color:Color(0xff0560FA) ),),
                ],),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15,top: 20),
                child: Text('Package Status',style: TextStyle(fontSize: 14,color: Color(0xffA7A7A7)),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Container(
                      height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff0560FA),
                          ),
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xff0560FA),
                        ),
                        child: Checkbox(value: true, onChanged: null,checkColor:Colors.black,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 21),
                    child: Text("Courier requested",style: TextStyle(fontSize: 14,color: Color(0xffA7A7A7)),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47,),
                child: Text('July 7 2022 08:00am',style: TextStyle(fontSize: 12,color: Colors.red),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff0560FA),
                        ),
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xff0560FA),
                      ),
                      child: Checkbox(value: true, onChanged: null,checkColor:Colors.black,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 21),
                    child: Text("Package ready for delivery",style: TextStyle(fontSize: 14,color: Color(0xffA7A7A7)),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47,),
                child: Text('July 7 2022 09:00am',style: TextStyle(fontSize: 12,color: Colors.red),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff0560FA),
                        ),
                        borderRadius: BorderRadius.circular(3),

                      ),
                      child: Checkbox(value: false, onChanged: null,checkColor:Colors.black,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 21),
                    child: Text("Package in transit",style: TextStyle(fontSize: 14,color: Color(0xffA7A7A7)),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47,),
                child: Text('July 7 2022 08:00am',style: TextStyle(fontSize: 12,color: Colors.red),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff0560FA),
                        ),
                        borderRadius: BorderRadius.circular(3),

                      ),
                      child: Checkbox(value: false, onChanged: null,checkColor:Colors.black,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 21),
                    child: Text("Package delivered",style: TextStyle(fontSize: 14,color: Color(0xffA7A7A7)),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47,),
                child: Text('July 7 2022 10:00am',style: TextStyle(fontSize: 12,color: Colors.red),),
              ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Container(
                 alignment: Alignment.center,
                 height: 50,
                 width: 350,
                 color: Color(0xff0560FA),
                 child: TextButton(onPressed: null,
                     child: Text("View Package Info",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)

                 ),
               ),
             )

            ],)
          ],

        ),
      ),

    );


  }

}