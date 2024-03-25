import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/services/theme_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool dark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(
          Iconsax.arrow_square_left,
          color: Color(0xff0560FA),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
              color: Color(0xffA7A7A7),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
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
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ken Nwaeze",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          "Current balance: ",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "N10,712:00",
                          style: TextStyle(
                              color: Color(0xff0560FA),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 75,
                ),
                Icon(
                  Iconsax.eye_slash,
                  color: Theme.of(context).colorScheme.tertiary,
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Enable Dark Mode",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: (){
                    Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
                    setState(() {
                      if(dark==true){
                        dark = false;
                      }else if(dark==false) {
                        dark = true;
                      }
                    });
                  },
                  child: Icon(
                    dark ? Icons.toggle_on_sharp: Icons.toggle_off_sharp,
                    color: dark ? Color(0xff0560FA): Colors.grey,
                    size: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.profile_circle,color: Theme.of(context).colorScheme.tertiary,),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Edit Profile",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              Text("Name, phone no, address, email ...",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 10,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),

            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.document_text_1,color: Theme.of(context).colorScheme.tertiary,),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Statements & Reports",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              Text("Download transaction details, orders, deliveries",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 10,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),

            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.notification,color: Theme.of(context).colorScheme.tertiary,),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Notification Settings",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              Text("mute, unmute, set location & tracking setting",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 10,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),

            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.wallet_1,color: Theme.of(context).colorScheme.tertiary,),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Card & Bank account settings",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              Text("change cards, delete card details",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 10,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),

            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.share,color: Theme.of(context).colorScheme.tertiary,),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Referrals",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              Text("check no of friends and earn",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 10,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),

            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.map_1,color: Theme.of(context).colorScheme.tertiary,),
                          SizedBox(width: 6,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("About Us",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                              Text("know more about us, terms and conditions",style: TextStyle(color: Color(0xffA7A7A7),fontSize: 10,fontFamily: 'Roboto',fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),

            SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 283,
                      child: Row(
                        children: [
                          Icon(Iconsax.logout_1,color: Color(0xffED3A3A),),
                          SizedBox(width: 6,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Log Out",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Iconsax.arrow_right_3,color: Theme.of(context).colorScheme.tertiary,size: 16,)
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}