import 'package:flutter/material.dart';
import 'package:testbed/add_player_dialog.dart';
import 'package:testbed/custom_dialog_box.dart';
import 'package:testbed/custom_dialogs.dart';

class GameRoomWidget extends StatefulWidget {
  final String titleText;
  final int totalNumber;
  final String dynamicText;

  const GameRoomWidget({
    super.key,
    required this.titleText,
    required this.totalNumber,
    required this.dynamicText,
  });

  @override
  State<GameRoomWidget> createState() => _GameRoomWidgetState();
}

class _GameRoomWidgetState extends State<GameRoomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.95,
        maxWidth: MediaQuery.of(context).size.width * 0.95,
      ),
      padding: EdgeInsets.all(12),
      child: ListView.builder(
        itemCount: widget.totalNumber,
        itemBuilder: (BuildContext context, int index) {
          return getItem(context, index, widget.dynamicText);
        },
      ),
    );
  }
}

Widget getItem(BuildContext context, int index, String dynamicText) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Card(
      color: Color(0xFFF7F7F2), // Set the main card background color to #41454D
      elevation: 4.0, // Card elevation for shadow effect
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding inside the card
        child: Stack(
          children: [
            Positioned(
              top: 30, // Positioning below the "testing" text
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ), // Amber color
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      dynamicText.toUpperCase(), // Uppercase transformation
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Make the text bold
                        fontSize: 18, // Set font size to 20
                        color: Color(0xFF222725), // Set text color to #FCF7FF
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      // First section (Card A with player icon before each text)
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print("tapped");
                                      showCustomDialogBox(
                                        context,
                                        title: "Test",
                                        description: "testing",
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.account_circle,
                                          color: Color(0xFF222725),
                                        ), // Player icon
                                        SizedBox(
                                          width: 2,
                                        ), // Space between icon and text
                                        Text(
                                          'Textasdasdasdsa',
                                          style: TextStyle(
                                            color: Color(0xFF222725),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => CustomDialog(),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.account_circle,
                                          color: Color(0xFF222725),
                                        ), // Player icon
                                        SizedBox(width: 2),
                                        Text(
                                          'Text2312 2',
                                          style: TextStyle(
                                            color: Color(0xFF222725),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 12), // Space between the rows
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween, // Evenly space texts
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => CustomDialog(),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.account_circle,
                                          color: Color(0xFF222725),
                                        ), // Player icon
                                        SizedBox(
                                          width: 2,
                                        ), // Space between icon and text
                                        Text(
                                          'Text 3',
                                          style: TextStyle(
                                            color: Color(0xFF222725),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => CustomDialog(),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.account_circle,
                                          color: Color(0xFF222725),
                                        ), // Player icon
                                        SizedBox(
                                          width: 2,
                                        ), // Space between icon and text
                                        Text(
                                          'Text 4',
                                          style: TextStyle(
                                            color: Color(0xFF222725),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Third section (Card C with an arrow and 10% width)
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width *
                            0.1, // 10% of the total width
                        child: Center(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons
                                    .arrow_forward, // Arrow icon pointing to the right
                                color: Color(
                                  0xFF222725,
                                ), // Set icon color to #FCF7FF
                                size: 30, // You can adjust the size as needed
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Positioned CircleAvatar at the top-left
            Positioned(
              top: 0,
              left: 0,
              child: CircleAvatar(
                radius: 12, // Increased size by 10% (previous was 20)
                backgroundImage: AssetImage(
                  'assets/images/28.jpg',
                ), // Replace with your image URL or asset
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
