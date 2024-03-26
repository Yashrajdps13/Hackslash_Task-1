import 'package:flutter/material.dart';
import '../widgets/nav.dart';


class Wallet extends StatefulWidget {
  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
      backgroundColor: Color.fromRGBO(0, 13, 29, 0),
      title: Text('Wallet',
        style: TextStyle(
            color: Colors.grey
        ),),
    ),

    );
  }
}
