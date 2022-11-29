import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(
        'https://images.unsplash.com/photo-1525373698358-041e3a460346');
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildLiveIcon(Color color) => buildCircle(
        color: Color.fromARGB(255, 102, 102, 255),
        all: 4,
        child: buildCircle(
          color: color,
          all: 9,
          child: Text(
            'Live',
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );

  Widget buildLiveCircle(Color color) => buildsCircle(
        color: Color.fromARGB(255, 102, 102, 255),
        all: 4,
        child: buildsCircle(
          color: color,
          all: 11,
          child: Text(
            'Live',
          ),
        ),
      );

  Widget buildsCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(3),
          color: color,
          child: child,
        ),
      );
}
