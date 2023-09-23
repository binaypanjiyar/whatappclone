import 'package:flutter/material.dart';
import 'package:whatapp/color.dart';
import 'package:whatapp/responsive/responsive_layout.dart';
import 'package:whatapp/screens/mobile_screen_layout.dart';
import 'package:whatapp/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatApp UI',
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ) ,
      home:const ResponsiveLayout(mobileScreenLayout:MobileScreenLayout(),
        webScreenLayout: WebScreenLayout()),
    );
  }
}

// this is the simple example of tab in which i three tab tar is used all have their different work
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyTabbedPage(),
//     );
//   }
// }
//
// class MyTabbedPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3, // Three tabs
//       initialIndex: 1, // Initially, the second tab is selected
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Tab Example'),
//           bottom: TabBar(
//             tabs: [
//               Tab(text: 'Tab 1'),
//               Tab(text: 'Tab 2'),
//               Tab(text: 'Tab 3'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             // Content for Tab 1
//             Center(child: Text('Tab 1 Content')),
//
//             // Content for Tab 2
//             Center(child: Text('Tab 2 Content')),
//
//             // Content for Tab 3
//             Center(child: Text('Tab 3 Content')),
//           ],
//         ),
//       ),
//     );
//   }
// }
