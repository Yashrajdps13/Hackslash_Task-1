import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import '../widgets/transactions.dart';


class Wallet extends StatefulWidget {
  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List<Transactions> transactions = [
    Transactions(amount: '-N3,000.00', date: 'July 7, 2022', action:'Delivery fee' ),
    Transactions(amount: '-N2,000.00', date: 'July 7, 2022', action:'Delivery fee' ),
    Transactions(amount: 'N10,000.00', date: 'July 28, 2022', action: 'Top up'),
    Transactions(amount: '-N2,000.00', date: 'July 25, 2022', action:'Delivery fee' ),
    Transactions(amount: 'N5,000.00', date: 'July 25, 2022', action: 'Top up'),
    Transactions(amount: '-N4,000.00', date: 'July 17, 2022', action: 'Delivery fee'),
    Transactions(amount: '-N12,000.00', date: 'July 10, 2022', action:'Delivery fee' ),
    Transactions(amount: '-N2,000.00', date: 'July 7, 2022', action: 'Delivery fee'),
    Transactions(amount: 'N20,000.00', date: 'July 7, 2022', action: 'Top up'),
    Transactions(amount: 'N20,000.00' , date: 'July 6, 2022', action: 'Top up'),
    Transactions(amount: '-N15,000.00', date: 'July 4, 2022', action:'Delivery fee' ),
    Transactions(amount:'N20,000.00' , date:'July 4, 2022' , action:'Top up' ),
    Transactions(amount: '-N3,000.00', date: 'July 2, 2022', action:'Delivery fee' ),
    Transactions(amount: 'N5,000.00', date: 'July 2, 2022', action:'Top up' ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor:  Color.fromRGBO(0, 27, 59, 1),
          centerTitle: true,
          title: Text('Wallet',
            style: TextStyle(
                color: Colors.grey,
              fontSize: 18
            ),),
          leading: Icon(Icons.arrow_back_ios,
            size: 15.0,
            color: Color.fromRGBO(5, 96, 250, 1),),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 48.0),
          child: Column(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/pfp.png"),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ken Nwaeze',
                            style: TextStyle(
                                color: Colors.white
                            ),),
                          Row(
                            children: [
                              Text('Current balance:',
                                style: TextStyle(
                                    color: Colors.white
                                ),),
                              Text('  N10,712:00',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 96, 250, 1)
                                ),)
                            ],
                          )
                        ],),
                      Spacer(),
                      Icon(Icons.visibility_off_outlined,
                        color: Colors.grey,
                        size: 20,)
                    ],
                  ),

                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  height: 116.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 27, 59, 1)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Top Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                                child: IconButton(
                                  color: Color.fromRGBO(0, 13, 29, 1),
                                  onPressed: () {},
                                  icon: ImageIcon(AssetImage("assets/images/bank.png"),),
                                ),
                              ),
                              Text('Bank',
                                style: TextStyle(
                                    color: Colors.white
                                ),)
                            ],
                          ),

                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                                child: IconButton(
                                  color: Color.fromRGBO(0, 13, 29, 1),
                                  onPressed: () {},
                                  icon: ImageIcon(AssetImage("assets/images/transfer.png"),
                                  ),
                                ),
                              ),
                              Text('Transfer',
                                style: TextStyle(
                                    color: Colors.white
                                ),)
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                                child: IconButton(
                                  color: Color.fromRGBO(0, 13, 29, 1),
                                  onPressed: () {},
                                  icon: ImageIcon(AssetImage("assets/images/card.png"),),
                                ),
                              ),
                              Text('Card',
                                style: TextStyle(
                                    color: Colors.white
                                ),)
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Transaction History',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            tileColor: Color.fromRGBO(0, 27, 59, 1),
                            title: Text(transactions[index].action,
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                            subtitle: Text(transactions[index].date,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),),
                            trailing: Text(transactions[index].amount,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),),

                          ),
                        );

                      }
                  ),
                ),

              ]
          ),
        )
    );
  }
}