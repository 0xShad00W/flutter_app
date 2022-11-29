import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/utils/tab_1.dart';
import 'package:flutter_profile/utils/tab_2.dart';
import 'package:flutter_profile/widget/appbar_w.dart';
import 'package:flutter_profile/widget/button_w.dart';
import 'package:flutter_profile/widget/content.dart';
import 'package:flutter_profile/widget/flower_w.dart';
import 'package:flutter_profile/widget/profile_w.dart';
import 'package:flutter_profile/widget/tap_w.dart';

import '../widget/about.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xff09031d),
          appBar: buildAppBar(context),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 14),
              Container(
                height: 150,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ProfileWidget(
                      imagePath: '',
                      onClicked: () {},
                    ),
                    Positioned(
                      bottom: 8,
                      child: Container(
                        height: 135,
                        width: 135,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 6,
                              color: Color.fromARGB(255, 102, 102, 255),
                            ),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: Color.fromARGB(255, 246, 37, 0),
                            ),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                      bottom: -3,
                      child: Container(
                        height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 246, 37, 0),
                            border: Border.all(
                              width: 4,
                              color: Color(0xff09031d),
                            ),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Text(
                          'Live',
                          style: TextStyle(
                              height: 1.2, fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24), // sapace
              //buildName(user), //widget
              AboutText(
                title: '@Mahdi',
              ),
              const SizedBox(
                height: 10.0,
              ),
              AboutText(title: 'i\'m back baby \n watch me stream everyday'),

              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: NumbersWidget(),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  buildUpgradeButton(),
                ]),
              ),
              const SizedBox(height: 28),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    buildTap(),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  buildUpgradecontent(),
                  const SizedBox(height: 25),
                  buildUpgradecontent(),
                ]),
              ),
            ],
          )),
    );
  }

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Follow',
        onClicked: () {},
      );

  Widget buildUpgradecontent() => content(
        text: '',
        onClicked: () {},
      );

  Widget buildTap() => TapWidget(
        text: 'Recent Prodcast',
        text2: 'Highlight & Uplods',
        onClicked: () {},
      );
}
