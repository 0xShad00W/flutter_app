import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class content extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const content({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        vidCard(),
        const SizedBox(
          width: 25,
        ),
        vidCard2()
      ]);

  Column vidCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 150.0,
            width: 150,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.svg.com/img/gallery/the-untold-truth-of-shroud/intro-1530039722.jpg'),
                  fit: BoxFit.fill),
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Badge(
              shape: BadgeShape.square,
              badgeColor: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
              badgeContent:
                  Text('3:22:12', style: TextStyle(color: Colors.white)),
            ),
          ),
        ]),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Chill Stream Tonight -...',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '122K views  .  6 days ago',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
      ],
    );
  }

  //start new
  Column vidCard2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 150.0,
            width: 150,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGAsUkeW5_1TyBA2fl-rA6FLl7JUU7_Tbkiw&usqp=CAU'),
                  fit: BoxFit.fill),
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Badge(
              shape: BadgeShape.square,
              badgeColor: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
              badgeContent:
                  Text('2:12:50', style: TextStyle(color: Colors.white)),
            ),
          ),
        ]),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Chill kinda day -CSGO...',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '522K views  .  1 weak ago',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
      ],
    );
  }
}
