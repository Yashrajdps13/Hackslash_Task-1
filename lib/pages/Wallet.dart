import 'package:flutter/material.dart';
import 'package:hackslash_task1/utils/color.dart';


class Wallet extends StatelessWidget {
  const Wallet({super.key});

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
          currentIndex: 1,
          selectedItemColor: BackgroundColor3,
          onTap: (index) {
            switch (index) {
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
      backgroundColor: Color(0xff000d1d),
      appBar: AppBar(

        iconTheme:
        IconThemeData(
          color: Color(0xff0560FA),
        ),
        title: Text("Wallet",
            style: TextStyle(fontSize: 16, color: Color(0xffA7A7A7))),
        centerTitle: true,
backgroundColor: Color(0xff000d1d),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 22.0),
        child: Column(
          children: [
        Row(
        children: [
        CircleAvatar(
        radius: 40,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/pic_1.png'),

        ),
        SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ken Nwaeze", style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            Text("current balance: N10,712:00",
                style: TextStyle(color: Colors.white)),

          ],
        ),
        Spacer(),
        Icon(Icons.visibility_off, color: Colors.white,)
        ],
      ),
           SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff001B3B),
              ),
              height: 140,
              width: 450,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text('Top up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
                  Expanded(
                    child: Row(children: [
                      Spacer(flex: 1,),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff0560FA),
                        ),
                        child: Icon(Icons.account_balance, color: Colors.black,size: 40,),
                        alignment: Alignment.center,
                      ),
                      Spacer(flex: 1,),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Color(0xff0560FA),
                        ),
                        child: Icon(Icons.sync_alt_outlined, color: Colors.black,size: 40),
                        alignment: Alignment.center,
                      ),
                      Spacer(flex: 1,),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff0560FA),
                        ),
                        child: Icon(Icons.credit_card_outlined, color: Colors.black,size: 40),
                        alignment: Alignment.center,
                      ),
                      Spacer(flex: 1,),
                    ],

                    )

                  ),

                    Row(children: [
                      Spacer(flex: 1,),
                       Text('Bank     ' ,style: TextStyle(fontSize: 12,color: Colors.white),),
                      Spacer(flex: 1,),
                       Text('Transfer',style: TextStyle(fontSize: 12,color: Colors.white),),
                      Spacer(flex: 1,),
                       Text('   Card',style: TextStyle(fontSize: 12,color: Colors.white),),
                      Spacer(flex: 1,),
                     ],
                   )
                 ],),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              child:Row(
                children: [
                Text('Transaction History',style: TextStyle(fontSize: 21,color: Colors.white,)),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 60,
              width: 350,
              color: Color(0xff001B3B),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Dilivery Fee',style: TextStyle(fontSize: 16,color:Colors.white),),
                      Text('July 7, 2022',style: TextStyle(fontSize: 12,color:Color(0xffA7A7A7)),),
                      ],),
                  ),
                      Spacer(flex: 1,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('-N3,000.00',style: TextStyle(fontSize: 15,color: Colors.red),),
                      )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 350,
              color: Color(0xff001B3B),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dilivery Fee',style: TextStyle(fontSize: 16,color:Colors.white),),
                        Text('July 7, 2022',style: TextStyle(fontSize: 12,color:Color(0xffA7A7A7)),),
                      ],),
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('-N2,000.00',style: TextStyle(fontSize: 15,color: Colors.red),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 350,
              color: Color(0xff001B3B),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Top up',style: TextStyle(fontSize: 16,color:Colors.white),),
                        Text('July 28, 2022',style: TextStyle(fontSize: 12,color:Color(0xffA7A7A7)),),
                      ],),
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('N10,000.00',style: TextStyle(fontSize: 15,color: Colors.red),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 350,
              color: Color(0xff001B3B),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dilivery Fee',style: TextStyle(fontSize: 16,color:Colors.white),),
                        Text('July 7, 2022',style: TextStyle(fontSize: 12,color:Color(0xffA7A7A7)),),
                      ],),
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('-N3,000.00',style: TextStyle(fontSize: 15,color: Colors.red),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 350,
              color: Color(0xff001B3B),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Top up',style: TextStyle(fontSize: 16,color:Colors.white),),
                        Text('July 7, 2022',style: TextStyle(fontSize: 12,color:Color(0xffA7A7A7)),),
                      ],),
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('-N3,000.00',style: TextStyle(fontSize: 15,color: Colors.red),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 350,
              color: Color(0xff001B3B),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dilivery Fee',style: TextStyle(fontSize: 16,color:Colors.white),),
                        Text('July 7, 2022',style: TextStyle(fontSize: 12,color:Color(0xffA7A7A7)),),
                      ],),
                  ),
                  Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('-N3,000.00',style: TextStyle(fontSize: 15,color: Colors.red),),
                  )
                ],
              ),
            ),
    ]
    ),
    ),

    );}

}