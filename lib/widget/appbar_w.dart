import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.ellipsis;
  final icon2 = CupertinoIcons.chevron_back;
  final String name = "";

  return AppBar(
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'MAHDI',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          CupertinoIcons.checkmark_alt_circle_fill,
          color: Colors.blueAccent,
          size: 25.0,
        )
      ],
    ),
    leading: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: IconButton(
        icon: Icon(icon2),
        iconSize: 35,
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    backgroundColor: Color(0xff09031d),
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: IconButton(
          icon: Icon(icon),
          iconSize: 35,
          color: Colors.white,
          onPressed: () {},
        ),
      )
    ],
  );
}
