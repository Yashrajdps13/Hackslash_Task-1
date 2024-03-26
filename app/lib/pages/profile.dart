import 'package:flutter/material.dart';

import '../widgets/nav.dart';
import '../widgets/settings.dart';


class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {

  List<Settings> settings = [
  Settings(settingsname: 'Edit Profile', description: 'Name, Phone Number, Address, Email'),
  Settings(settingsname: 'Statements and Reports', description: 'Download transaction details, orders, deliveries', ),
    Settings(settingsname: 'Notification Settings', description: 'Mute/Unmute, Set location and Tracking settings', ),
    Settings(settingsname: 'Card and Bank Account Settings', description: '', ),
    Settings(settingsname: 'Referrals', description: 'Change cards, Delete card details', ),
    Settings(settingsname: 'About Us', description: 'Know more about us, Terms and Conditions', ),
    Settings(settingsname: 'Log Out', description: '', ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (bottomNavigationBar: NavBar(),
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(0, 13, 29, 0),
              title: Text('Profile',
              style: TextStyle(
                  color: Colors.grey
              ),),
            ),
            body: SizedBox(
              height: 700,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        itemCount: settings.length,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 48.0),
                          child: Card(
                              child: ListTile(
                                tileColor: Color.fromRGBO(0, 27, 59, 1),
                                textColor: Colors.white,
                                leading: FlutterLogo(),
                                title: Text(settings[index].settingsname,
                                ),
                                subtitle: Text(settings[index].description),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ),
                        );

                        }
                    ),
                  ),
                ],
              ),
            ),



    );

  }
}
