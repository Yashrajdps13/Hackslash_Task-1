import 'package:flutter/material.dart';
import 'package:hackslash_task1/widgets/nav.dart';

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
          title: const Text('Wallet')),
    );
  }
}
