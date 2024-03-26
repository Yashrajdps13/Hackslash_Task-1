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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal:48.0),
        child: Column( children: [
          Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/pfp.png"),
              ),
              Column(children: [
                Text('Ken Nwaeze'),
                Row(
                  children: [
                    Text('Current balance:'),
                    Text('N10,712:00',
                      style: TextStyle(
                          color: Color.fromRGBO(5, 96, 250, 1)
                      ),)
                  ],
                )
              ],)
            ],
          ),
        ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Top Up'),
                Row(
                  children: [
                  IconButton(
                    onPressed: () {},
                    icon: ImageIcon(AssetImage("assets/images/bank.png"),),
                  ),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(AssetImage("assets/images/transfer.png"),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(AssetImage("assets/images/bank.png"),),
                    ),

                     ],



                ),
              ],
                  ),
          ),

      ]
        ),

            ),
      );
  }
}
