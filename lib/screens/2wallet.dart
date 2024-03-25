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
        iconTheme:
            IconThemeData(color: Color(0xffA7A7A7) //change your color here
                ),
        title: Text("Profile",
            style: TextStyle(fontSize: 16, color: Color(0xffA7A7A7))),
        centerTitle: true,
        backgroundColor: boxcolour,
      ),
      body: SingleChildScrollView(),
    );
  }
}
