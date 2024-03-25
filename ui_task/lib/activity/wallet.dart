import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/services/historyService.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Iconsax.arrow_square_left,color: Color(0xff0560FA),),
        title: Text("Wallet",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
        centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xffCFCFCF),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage('assets/images/ad2.jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ken Nwaeze",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                    Row(
                      children: [
                        Text("Current balance: ",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                        Text("N10,712:00",style: TextStyle(color: Color(0xff0560FA),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 75,),
                Icon(Iconsax.eye_slash,color: Theme.of(context).colorScheme.tertiary,)
              ],
            ),
            SizedBox(height: 40,),
            Stack(
              children: [
                Container(
                  height: 116,
                  width: 700,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 8),
                    child: Text("Top Up",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w700),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xff0560FA),
                            child: Container(
                              height: 25,
                              child: Image.asset('assets/icons/bank.png',color: Theme.of(context).colorScheme.background,),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Text("Bank",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xff0560FA),
                            child: Container(
                              height: 25,
                              child: Image.asset('assets/icons/transfer.png',color: Theme.of(context).colorScheme.background,),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Text("Transfer",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xff0560FA),
                            child: Container(
                              height: 25,
                              child: Image.asset('assets/icons/card.png',color: Theme.of(context).colorScheme.background,),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Text("Card",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text("Transaction History",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 20,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
              ],
            ),
            Container(
              height: 300,
              // height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: History.length,
                itemBuilder: (context, index) {
                  final _history = History[index];
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: ListTile(
                      title: Text(_history.type,style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                      subtitle: Text(_history.date,style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                      trailing: Text(_history.amount,style: TextStyle(color: _history.type=='Delivery fee'? Color(0xffED3A3A): Color(0xff35B369),fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  final List<TranscationHistory> History =[
    TranscationHistory(type: "Delivery fee", date: "July 7, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Top Up", date: "July 7, 2022", amount: "N10,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 7, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 8, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 9, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Top Up", date: "July 9, 2022", amount: "N7,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 9, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Top Up", date: "July 9, 2022", amount: "N7,000.00"),
    TranscationHistory(type: "Top Up", date: "July 10, 2022", amount: "N15,000.00"),
    TranscationHistory(type: "Top Up", date: "July 10, 2022", amount: "N1,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 15, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 15, 2022", amount: "-N7,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 20, 2022", amount: "-N8,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 21, 2022", amount: "-N5,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 22, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Top Up", date: "July 22, 2022", amount: "N7,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 23, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Top Up", date: "July 26, 2022", amount: "N7,000.00"),
    TranscationHistory(type: "Top Up", date: "July 27, 2022", amount: "N15,000.00"),
    TranscationHistory(type: "Top Up", date: "July 27, 2022", amount: "N1,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 28, 2022", amount: "-N3,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 28, 2022", amount: "-N7,000.00"),
    TranscationHistory(type: "Delivery fee", date: "July 30, 2022", amount: "-N8,000.00"),

  ];
}

