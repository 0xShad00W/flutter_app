import 'package:flutter/material.dart';

class TabBarBottom extends StatelessWidget {
  const TabBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 5,
      indicatorColor: Colors.deepPurple,
      tabs: [
        Tab(text: 'Recent Brodcast'),
        Tab(text: 'Highlight & uploads'),
      ],
    );
  }
}
