import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

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
          ],
        ),
      ),
    );
  }
}
