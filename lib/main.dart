import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'tapBar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 2,
          child: const ProfileScreen()),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
        SafeArea(
          child: Container(
           color: Colors.black,
           child: Column(
             children: [
               SizedBox(
                 height: 8.0,
               ),
               navigationBar(),
               SizedBox(
                 height: 20.0,
               ),
               profilePic(),
               const SizedBox(
                 height: 16.0,
               ),
               infoText(),
               const SizedBox(
                 height: 16.0,
               ),
               followersInfo(),
               const SizedBox(
                 height: 16.0,
               ),
               Row(
                 children: [
                   SizedBox(
                     width: 20.0,
                   ),
                   Expanded(
                     child: InkWell(
                       onTap: (){
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           boxShadow:[
                           BoxShadow(
                             color: Colors.deepPurple,
                           blurRadius: 25.0,
                         ),
                           ],
                           color: Colors.deepPurple,
                           borderRadius: BorderRadius.circular(30.0),
                         ),
                         child: Center(
                           child: Padding(
                             padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                             child: Text(
                               'Follow',
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.bold),
                             ),
                           ),

                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                   width: 40.0,
                   ),
                   navigationIcon(Icons.store),
                   SizedBox(
                     width: 20,
                   )


                 ],
               ),
               SizedBox(
                 height:15.0,
               ),
              Container(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: TabBarBottom(),
              ),
              Container(
                  padding: EdgeInsets.all(15),
             child:Row(
               children:[
                 vidCard(),
                 SizedBox(
                   width: 30.0,
                 ),
                 vidCard(),
               ]
             ))

             ],
           ),

            )
        ),
    ]
      ),
    );
  }

  Column vidCard() {
    return Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Stack(
                     children:[
                       Container(
                         height: 150.0,
                         width: 150,
                         decoration: BoxDecoration(
                           image:  const DecorationImage(
                               image: NetworkImage(
                                   'https://www.svg.com/img/gallery/the-untold-truth-of-shroud/intro-1530039722.jpg'),
                               fit: BoxFit.fill),
                           color: Colors.deepPurple,
                           borderRadius: BorderRadius.circular(20.0),
                         ),),
                       Padding(
                         padding: EdgeInsets.all(5.0),
                         child: Badge(
                           shape: BadgeShape.square,
                           badgeColor: Colors.black.withOpacity(0.5),
                           borderRadius: BorderRadius.circular(8),
                           badgeContent: Text('3:22:12', style: TextStyle(color: Colors.white)),
                         ),
                       ),

               ]
                   ),
                   SizedBox(
                     height: 10.0,
                   ),
                   Text('Chill Stream Tonight -...',style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 16.0
                   ),),
                   SizedBox(
                     height: 8.0,
                   ),
                   Text('122K views  .  6 days ago',style: TextStyle(
                       color: Colors.grey,
                       fontSize: 14.0
                   ),),
                 ],

               );
  }

  Container followersInfo() {
    return Container(
      margin: EdgeInsets.only(
        left: 8.0,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            profileDetails('123', 'Following'),
            const VerticalDivider(
              width: 30,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
            profileDetails('10M', 'Followers'),
            const VerticalDivider(
              width: 30,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
            profileDetails('199', 'Videos'),
          ],
        ),
      ),
    );
  }

  Column profileDetails(String t1, String t2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          t1,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 24),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          t2,
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    );
  }

  Center infoText() {
    return Center(
      child: Column(
        children: const [
          Text(
            '@shrouddrill',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            '            am back baby \n Watch me stream everyday',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Stack profilePic() {
    return Stack(
      children: [
        Container(
          width: 170.0,
          height: 170.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
            shape: BoxShape.circle,
          ),
          child: Container(
            margin: EdgeInsets.all(4),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              shape: BoxShape.circle,
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.svg.com/img/gallery/the-untold-truth-of-shroud/intro-1530039722.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 69.0,
          child: Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            badgeContent: Text('LIVE',
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
          ),
        ),
      ],
    );
  }

  Row navigationBar() {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        navigationIcon(Icons.arrow_back_ios),
        const SizedBox(
          width: 90.0,
        ),
        Row(
          children: [
            const Text(
              'Shoroud',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Badge(
              badgeContent: const Icon(
                Icons.check,
                color: Colors.white,
                size: 8.0,
              ),
              badgeColor: Colors.blue,
            ),
            const SizedBox(
              width: 75.0,
            ),
            navigationIcon(Icons.more_horiz),
          ],
        )
      ],
    );
  }

  Container navigationIcon(IconData icon) {
    return Container(
        width: 55.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
