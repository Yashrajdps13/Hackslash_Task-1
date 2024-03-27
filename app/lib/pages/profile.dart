import 'package:flutter/material.dart';

import '../widgets/nav.dart';
import '../widgets/settings.dart';


class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  bool _switchValue = true;

  List<IconData> icons = [Icons.person, Icons.text_snippet, Icons.notifications, Icons.credit_card, Icons.share, Icons.image, Icons.logout];
  List<Settings> settings = [
  Settings(settingsname: 'Edit Profile', description: 'Name, Phone Number, Address, Email'),
  Settings(settingsname: 'Statements and Reports', description: 'Download transaction details, orders, deliveries', ),
    Settings(settingsname: 'Notification Settings', description: 'Mute/Unmute, Set location and Tracking settings', ),
    Settings(settingsname: 'Card and Bank Account Settings', description: 'Change cards, Delete card details', ),
    Settings(settingsname: 'Referrals', description: 'Check number of friends and earn', ),
    Settings(settingsname: 'About Us', description: 'Know more about us, Terms and Conditions', ),
    Settings(settingsname: 'Log Out', description: '', ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(0, 27, 59, 1),
        centerTitle: true,
        title: Text('Profile',
          style: TextStyle(
              color: Colors.grey,
            fontSize: 18.0,
          ),),
        leading: Icon(Icons.arrow_back_ios,
          size: 15,
          color: Color.fromRGBO(5, 96, 250, 1),),
      ),
      body: SizedBox(
        height: 700,
        child: Padding(
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
                              color: Colors.white,
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
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    Text('Enable Dark mode',
                      style: TextStyle(
                          color: Colors.white,
                      ),),
                    Spacer(),
                    Switch(value: _switchValue, onChanged: (newV) {},
                    activeTrackColor: Color.fromRGBO(5, 96, 250, 1),),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: settings.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          tileColor: Color.fromRGBO(0, 27, 59, 1),
                          textColor: Colors.white,
                          leading: Icon(icons[index],
                          color: Colors.white,),
                          title: Text(settings[index].settingsname,
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          subtitle: Text(settings[index].description,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      );

                    }
                ),
              ),
            ],
          ),
        ),
      ),



    );

  }
}