import 'package:flutter/material.dart';
import 'package:testbed/game_room.dart';
import 'package:testbed/game_table.dart';
import 'package:testbed/test_bed_widget.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Color(0XFF090302),
      ),
      home: //PokerTable(),
      //TestBedWidget(titleText: "Gameroom1", totalNumber: 20, dynamicText:"testing"),
      GameRoomWidget(titleText: "ALL Games", totalNumber: 10, dynamicText: "testing")
    );
  }
}

