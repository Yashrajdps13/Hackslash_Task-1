import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';
import 'package:task1/widgets/wallettile.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbackgroundcolor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffA7A7A7)),
        leading: Icon(Icons.arrow_back),
        title: Text("Wallet",
            style: TextStyle(fontSize: 16, color: Color(0xffA7A7A7))),
        centerTitle: true,
        backgroundColor: darkbackgroundcolor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage('assets/images/profilepic.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ken Nwaeze",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          "Current balance: ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Roboto'),
                        ),
                        Text(
                          "N10,712.00",
                          style: TextStyle(
                              fontSize: 12,
                              color: darktextcolour,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.visibility_off,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: boxcolour),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Top Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff0560FA),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/bank.png'),
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 5,
                            ),
                            Text(
                              "Bank",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff0560FA),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/transfer.png'),
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 5,
                            ),
                            Text(
                              "Transfer",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff0560FA),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/card.png'),
                                    scale: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 5,
                            ),
                            Text(
                              "Card",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Transaction History",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 7, 2022",
                Number: "-N3,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 7, 2022",
                Number: "-N2,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Top up",
                normaltext: "July 28, 2022",
                Number: "+N10,000.00",
                color: Colors.green),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 25, 2022",
                Number: "-N2,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Top up",
                normaltext: "July 25, 2022",
                Number: "+N5,000.00",
                color: Colors.green),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 17, 2022",
                Number: "-N4,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 10, 2022",
                Number: "-N12,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 7, 2022",
                Number: "-N2,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Top up",
                normaltext: "July 7, 2022",
                Number: "+N20,000.00",
                color: Colors.green),
            wallet_widget(
                boldtext: "Top up",
                normaltext: "July 6, 2022",
                Number: "+N20,000.00",
                color: Colors.green),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 4, 2022",
                Number: "-N15,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Top up",
                normaltext: "July 4, 2022",
                Number: "+N20,000.00",
                color: Colors.green),
            wallet_widget(
                boldtext: "Delivery fee",
                normaltext: "July 2, 2022",
                Number: "-N3,000.00",
                color: Colors.red),
            wallet_widget(
                boldtext: "Top up",
                normaltext: "July 2, 2022",
                Number: "+N5,000.00",
                color: Colors.green),
          ],
        ),
      ),
    );
  }
}
