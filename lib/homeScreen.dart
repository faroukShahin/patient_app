//ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doctor/homeScreenWidgets/chats.dart';
import 'package:doctor/homeScreenWidgets/profile.dart';
import 'package:doctor/homeScreenWidgets/schedule.dart';
import 'package:doctor/homeScreenWidgets/services.dart';
import 'package:doctor/hospitals/exploreHospitals.dart';
import 'package:doctor/main.dart';
import 'package:doctor/ourServices/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeScreen extends StatefulWidget{
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyList=[
      services(),
      schedule(),
      chats(),
      profile(),
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            bodyList[_index],
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: _drawer())
          ],
        )
    );
  }
  _drawer(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,

      ),
      child: GNav(
          rippleColor: Colors.lightBlueAccent, // tab button ripple color when pressed
          hoverColor: Colors.lightBlueAccent, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          backgroundColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.white, width: 1), // tab button border
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 200), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.blue, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.blue.withOpacity(0.1), // selected tab background color
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // navigation bar padding
          onTabChange: (index){
            setState(() {
              _index=index;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'الرئيسية',
            ),
            GButton(
              icon: Icons.history,
              text: 'مواعيدك',
            ),
            GButton(
              icon: Icons.chat,
              text: 'محادثاتك',
            ),
            GButton(
              icon: Icons.person,
              text: 'حسابك',
            )
          ]
      ),
    );
  }
}