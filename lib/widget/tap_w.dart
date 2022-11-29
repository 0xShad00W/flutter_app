import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter_profile/utils/tab_1.dart';
import 'package:flutter_profile/utils/tab_2.dart';

class TapWidget extends StatelessWidget {
  final String text;
  final String text2;
  final VoidCallback onClicked;

  const TapWidget({
    Key? key,
    required this.text,
    required this.text2,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
          child: Column(
        children: [
          TabBar(
            unselectedLabelColor: Color.fromARGB(255, 116, 116, 116),
            labelColor: Colors.white,
            indicatorColor: Color.fromARGB(255, 102, 102, 255),
            tabs: [
              Tab(
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Tab(
                child: Text(
                  text2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ],
          ),
          //Expanded(
          //  child: TabBarView(children: [
          //    Tab1(),
          //    Tab2(),
          //  ]),
          // ),
        ],
      ));
}
