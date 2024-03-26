import 'package:flutter/material.dart';
import 'package:hackslash_task_1/utils/colors.dart';
import 'package:hackslash_task_1/widgets/transactionTiles.dart';

class walletPage extends StatefulWidget {
  const walletPage({super.key});

  @override
  State<walletPage> createState() => _walletPageState();
}

class _walletPageState extends State<walletPage> {
  //Most Recent Transactions first so changed the date a little bit
  List<Transactions> transactions = [
    Transactions(type: "Delivery Fee", date: "July 7 2022", amount: "-N3,000.00",color: Colors.red),
    Transactions(type: "Delivery Fee", date: "July 7 2022", amount: "-N2,000.00",color: Colors.red),
    Transactions(type: "Top Up", date: "July 2 2022", amount: "N10,000.00",color: Colors.green),
    Transactions(type: "Delivery Fee", date: "June 23 2022", amount: "-N2,000.00",color: Colors.red),
    Transactions(type: "Top Up", date: "June 7 2022", amount: "N5,000.00",color: Colors.green),
    Transactions(type: "Delivery Fee", date: "May 24 2022", amount: "-N3,000.00",color: Colors.red),
    Transactions(type: "Delivery Fee", date: "May 13 2022", amount: "-N5,000.00",color: Colors.red),
    Transactions(type: "Top Up", date: "July 7 2022", amount: "N20,000.00",color: Colors.green),
    Transactions(type: "Transfer", date: "July 7 2022", amount: "-N10,000.00",color: Colors.red),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallet",
          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        ),
        backgroundColor: darkBackgroundColor,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage('assets/images/profile_icon.png'),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("current balance: "),
                        Text(
                          "40,000",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.visibility_off)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Top Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          //Using InkWell as these all are clickable buttons that will take users to other pages
                          //of their need
                          InkWell(
                            child: ClipOval(
                                child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff0560FA),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/bank.png'),
                                  scale: 1,
                                ),
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Bank"),
                        ],
                      ),
                      Column(
                        children: [
                          //Using InkWell as these all are clickable buttons that will take users to other pages
                          //of their need
                          InkWell(
                            child: ClipOval(
                                child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff0560FA),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/transfer.png'),
                                  scale: 1,
                                ),
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Transfer"),
                        ],
                      ),
                      Column(
                        children: [
                          //Using InkWell as these all are clickable buttons that will take users to other pages
                          //of their need
                          InkWell(
                            child: ClipOval(
                                child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff0560FA),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/card.png'),
                                  scale: 1,
                                ),
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Card"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              width: MediaQuery.of(context).size.width,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: lightBackgroundColor,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Align(child:  Text("Transaction History",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),), alignment: Alignment.centerLeft,),

            SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                    Card(
                      color: lightBackgroundColor,
                      child:
                      ListTile(
                      title: Text(transactions[index].type,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      subtitle: Text(transactions[index].date,style: TextStyle(color: Colors.white70),),
                      trailing: Text(transactions[index].amount,style: TextStyle(color: transactions[index].color,fontSize: 16)),
                    ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
