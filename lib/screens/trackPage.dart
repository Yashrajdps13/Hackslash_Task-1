import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackslash_task_1/utils/colors.dart';

class trackPage extends StatelessWidget {
  const trackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/mapdark.png'),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Align(
                  child: Text(
                    "Tracking Number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/icesymbol.png"),
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "R-7458-4567-4434-5854",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Text(
                    "Package Status",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (bool? value) {  },checkColor: darkBackgroundColor,),
                          Column(
                            children: [
                              Text("Courier Requested",style: TextStyle(color: Colors.white70,fontSize: 16),),
                              Text("July 7 2022, 8:00am",style: TextStyle(color: Colors.orange),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (bool? value) {  },checkColor: darkBackgroundColor,),
                          Column(
                            children: [
                              Text("Courier Requested",style: TextStyle(color: Colors.white70,fontSize: 16),),
                              Text("July 7 2022, 8:00am",style: TextStyle(color: Colors.orange),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (bool? value) {  },checkColor: darkBackgroundColor,),
                          Column(
                            children: [
                              Text("Courier Requested",style: TextStyle(color: Colors.white70,fontSize: 16),),
                              Text("July 7 2022, 8:00am",style: TextStyle(color: Colors.orange),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (bool? value) {  },checkColor: darkBackgroundColor,),
                          Column(
                            children: [
                              Text("Courier Requested",style: TextStyle(color: Colors.white70,fontSize: 16),),
                              Text("July 7 2022, 8:00am",style: TextStyle(color: Colors.orange),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: () => {
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: double.infinity,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              color: primaryColor,
                            ),
                            child: const Text(
                              "View Package Info",
                              style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
