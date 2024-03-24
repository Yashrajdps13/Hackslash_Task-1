import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';
import 'package:task1/utils/routes.dart';

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
      body: SingleChildScrollView(),
      bottomNavigationBar: Container(
        color: darkbackgroundcolor,
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.0678,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () =>
                          (Navigator.of(context).pushNamed(MyRoutes.homeRoute)),
                      child: Container(
                        child: Column(children: [
                          SizedBox(
                            height: 8,
                            width: 30,
                          ),
                          Icon(Icons.home, color: Colors.white),
                          Text(
                            "Home",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    InkWell(
                      onTap: () => (Navigator.of(context)
                          .pushNamed(MyRoutes.walletRoute)),
                      child: Container(
                        child: Column(children: [
                          Container(
                            color: darktextcolour,
                            height: 3,
                            width: 30,
                          ),
                          SizedBox(
                            height: 8,
                            width: 30,
                          ),
                          Icon(Icons.wallet, color: darktextcolour),
                          Text(
                            "Wallet",
                            style:
                                TextStyle(fontSize: 15, color: darktextcolour),
                          )
                        ]),
                      ),
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    InkWell(
                      onTap: () => (Navigator.of(context)
                          .pushNamed(MyRoutes.trackRoute)),
                      child: Container(
                        child: Column(children: [
                          SizedBox(
                            height: 11,
                            width: 30,
                          ),
                          Icon(Icons.track_changes, color: Colors.white),
                          Text(
                            "Track",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    InkWell(
                      onTap: () => (Navigator.of(context)
                          .pushNamed(MyRoutes.profileRoute)),
                      child: Container(
                        child: Column(children: [
                          SizedBox(
                            height: 11,
                            width: 30,
                          ),
                          Icon(Icons.person_rounded, color: Colors.white),
                          Text(
                            "Profile",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
