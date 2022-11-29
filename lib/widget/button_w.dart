import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 102, 102, 255),
                blurRadius: 25,
              ),
            ],
          ),
          width: 250,
          height: 50,
          child: buildButton(context),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          height: 50,
          child: buildButton2(context),
        ),
      ]);

  Widget buildButton(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          onPrimary: Colors.white,
          shadowColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 2),
          backgroundColor: Color.fromARGB(255, 102, 102, 255),
        ),
        child: Text(text),
        onPressed: onClicked,
      );

  Widget buildButton2(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            onPrimary: Color.fromARGB(255, 218, 218, 218),
            backgroundColor: Color.fromARGB(255, 23, 23, 23)),
        child: Icon(Icons.calendar_month),
        onPressed: onClicked,
      );
}
