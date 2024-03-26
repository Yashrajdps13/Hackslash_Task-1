import 'package:app/utilities/global.dart';
import 'package:app/widgets/wallet_widget.dart';
import 'package:flutter/material.dart';

class walletpage extends StatefulWidget {
  const walletpage({super.key});

  @override
  State<walletpage> createState() => _walletpageState();
}

class _walletpageState extends State<walletpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        iconTheme:
        IconThemeData(color: Colors.blue),
        leading: Icon(Icons.arrow_back),
        title: Text("Wallet", style: TextStyle(color:Colors.grey),),
        centerTitle: true,
        backgroundColor: backgroundcolor,
      ),
      backgroundColor: backgroundcolor,
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
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
                decoration: BoxDecoration(
                  color: primaryboxcolor,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                child: Column(
                  children: [
                    Center(child: Text("Top Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0560FA),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/bank.png'),
                                      scale: 0.78,
                                    ),
                                  ),
                                ),
                              ),
                              Text("Bank",style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          Column(

                            children: [

                              ClipOval(
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0560FA),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/transfer.png'),
                                      scale: 0.78,
                                    ),
                                  ),
                                ),
                              ),
                              Text("Transfer",style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          Column(

                            children: [

                              ClipOval(
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0560FA),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/card.png'),
                                      scale: 0.78,
                                    ),
                                  ),
                                ),
                              ),
                              Text("Card",style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Text("Transaction History",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),

              SizedBox(height: 20,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 7, 2022", Number: "-N3,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 7, 2022", Number: "-N2,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Top up", normaltext: "July 28, 2022", Number: "N10,000.00", color: Colors.green),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 25, 2022", Number: "-N2,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Top up", normaltext: "July 25, 2022", Number: "N5,000.00", color: Colors.green),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 17, 2022", Number: "-N4,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 10, 2022", Number: "-N12,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 7, 2022", Number: "-N2,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Top up", normaltext: "July 7, 2022", Number: "N20,000.00", color: Colors.green),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Top up", normaltext: "July 6, 2022", Number: "N20,000.00", color: Colors.green),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 4, 2022", Number: "-N15,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Top up", normaltext: "July 4, 2022", Number: "N20,000.00", color: Colors.green),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Delivery fee", normaltext: "July 2, 2022", Number: "-N3,000.00", color: Colors.red),
              SizedBox(height: 8,),
              wallet_widget(boldtext: "Top up", normaltext: "July 2, 2022", Number: "N5,000.00", color: Colors.green),
              SizedBox(height: 8,),

            ],
          ),
        ),
      ),
    );
  }
}
