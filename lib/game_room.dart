import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titleText),
      ),
      body: SizedBox(
        height: 500,  // Set height of the ListView box
        child: ListView.builder(
          itemCount: widget.totalNumber,
          itemBuilder: (BuildContext context, int index) {
            return getItem(context, index, widget.dynamicText);
          },
        ),
      ),
    );
  }
}

Widget getItem(BuildContext context, int index, String dynamicText) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Card(
      color: Color(0xFF41454D), // Set the main card background color to #41454D
      elevation: 4.0, // Card elevation for shadow effect
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding inside the card
        child: Stack(
          children: [
            // Main content container
            Column(
              children: [
                // Spacer with some height for a gap
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      dynamicText.toUpperCase(),  // Uppercase transformation
                      style: TextStyle(
                        fontWeight: FontWeight.bold,  // Make the text bold
                        fontSize: 20,                 // Set font size to 20
                        color: Color(0xFFFCF7FF),    // Set text color to #FCF7FF
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  width: double.infinity, // Ensure it takes full available width
                  child: Row(
                    children: [
                      // First section (Card A with player icon before each text)
                      Expanded(
                        child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // Center the column
                              children: [
                                SizedBox(height: 30,child: Text("Team A"),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space texts
                                  children: [
                                    Icon(Icons.account_circle, color: Color(0xFFFCF7FF)), // Player icon
                                    SizedBox(width: 8), // Space between icon and text
                                    Text('Text 1', style: TextStyle(color: Color(0xFFFCF7FF))),
                                    SizedBox(width: 8), // Space between text and icon in the next row
                                    Icon(Icons.account_circle, color: Color(0xFFFCF7FF)), // Player icon
                                    SizedBox(width: 8), // Space between icon and text
                                    Text('Text 2', style: TextStyle(color: Color(0xFFFCF7FF))),
                                  ],
                                ),
                                SizedBox(height: 10),
                                SizedBox(height: 30,child: Text("Team B"),), // Space between the rows
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space texts
                                  children: [
                                    Icon(Icons.account_circle, color: Color(0xFFFCF7FF)), // Player icon
                                    SizedBox(width: 8), // Space between icon and text
                                    Text('Text 3', style: TextStyle(color: Color(0xFFFCF7FF))),
                                    SizedBox(width: 8), // Space between text and icon in the next row
                                    Icon(Icons.account_circle, color: Color(0xFFFCF7FF)), // Player icon
                                    SizedBox(width: 8), // Space between icon and text
                                    Text('Text 4', style: TextStyle(color: Color(0xFFFCF7FF))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      // Third section (Card C with an arrow and 10% width)
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1, // 10% of the total width
                        child: Center(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_forward, // Arrow icon pointing to the right
                                  color: Color(0xFFFCF7FF), // Set icon color to #FCF7FF
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
                radius: 22, // Increased size by 10% (previous was 20)
                backgroundImage: AssetImage('assets/images/28.jpg'), // Replace with your image URL or asset
                backgroundColor: Colors.transparent, // Transparent background for the CircleAvatar
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
