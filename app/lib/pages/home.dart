import 'package:app/utilities/global.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: SafeArea(
          child: SingleChildScrollView(

            child:Container(

              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: backgroundcolor,
              child: (
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 2,),
                  SizedBox(height: 20,),
                  SizedBox(
                    child: TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal:20,vertical: 1),
                        focusedBorder: OutlineInputBorder (
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  SizedBox(
                    child: Container(
                      color: primaryboxcolor,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),

                    ),

                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    child: Container(
                      color: primaryboxcolor,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),

                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("what would you like to know",style: TextStyle(color: Colors.blue,fontSize: (15)), ),

                    ),
                  ),
                  SizedBox(height: 17,),
                  SizedBox(
                    child: Container(
                      color: primaryboxcolor,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 180),

                    ),
                  ),
                ],
               )
              ),
            ),
          ),

        ),
      ),
    );
  }
}
