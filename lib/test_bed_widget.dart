import 'package:flutter/material.dart';

class TestBedWidget extends StatefulWidget {
  final String titleText;
  final int totalNumber;
  final String dynamicText;

  const TestBedWidget({
    super.key,
    required this.titleText,
    required this.totalNumber,
    required this.dynamicText,
  });

  @override
  State<TestBedWidget> createState() => _TestBedWidgetState();
}

class _TestBedWidgetState extends State<TestBedWidget> {
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
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0),side: BorderSide(color: Color(0XFFF2A359), width: 2.0)),
      color: Color(0xFFF6F8F2),
      shadowColor: Color(0xFF2A2C24), // Set the main card background color to #41454D
      elevation: 10.0, // Card elevation for shadow effect
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding inside the card
        child: Stack(
          children: [
            // Main content container
            Column(
              children: [
                // Spacer with some height for a gap
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black.withValues(alpha:0.5),
                  //           blurRadius: 10,
                  //           offset: Offset(0, 0)

                  //         ),
                  //         BoxShadow(
                  //           color: Colors.black.withValues(alpha:0.5),
                  //           offset: Offset(-5, 0),
                  //           blurRadius: 10,
                  //         ),
                  //         BoxShadow(
                  //           color: Colors.white.withValues(alpha:0.5),
                  //           offset: Offset(5, 0),
                  //           blurRadius: 10,

                  //         )
                  //       ],
                  // ),
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            dynamicText.toUpperCase(),  // Uppercase transformation
                            style: TextStyle(
                              fontWeight: FontWeight.bold,  // Make the text bold
                              fontSize: 22,                 // Set font size to 20
                              color: Color(0xFF242423),    // Set text color to #FCF7FF
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: double.infinity, // Ensure it takes full available width
                  child: Row(
                    children: [
                      // First section (Card A with player icon before each text)
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center, // Center the column
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.account_circle, color: Color(0xFFF5CB5C)), // Player icon
                                        SizedBox(width: 8), // Space between icon and text
                                      Text("Teamtexttext1", style: TextStyle(
                                    color: Color(0xFF242423),fontWeight: FontWeight.bold,  // Make the text bold
                          fontSize: 16,
                                  ),),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                              Row(
                                      mainAxisAlignment: MainAxisAlignment.start, // Evenly space texts
                                      children: [
                                        Icon(Icons.account_circle, color: Color(0xFFF5CB5C)), // Player icon
                                        SizedBox(width: 8), // Space between icon and text
                                        Text('TextText12', style: TextStyle(color: Color(0xFF333533), fontWeight: FontWeight.bold,  // Make the text bold
                                                            fontSize: 16,)),
                                      ],
                                    ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle, color: Color(0xFFF5CB5C)), // Player icon
                                        SizedBox(width: 8),
                                      Text("Team B", style: TextStyle(
                                    color: Color(0xFF242423),fontWeight: FontWeight.bold,  // Make the text bold
                          fontSize: 16,
                                  ),),
                                    ],),
                                    SizedBox(height: 5), // Space between the rows
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.start, // Evenly space texts
                                      children: [
                                        Icon(Icons.account_circle, color: Color(0xFFF5CB5C)), // Player icon
                                        SizedBox(width: 8), // Space between icon and text
                                        Text('Text 3', style: TextStyle(color: Color(0xFF333533), fontWeight: FontWeight.bold,  // Make the text bold
                                                            fontSize: 16,)),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                        ),
                        ),
                      // Second section (Card B inside Expanded)
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                    boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha:0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2)

                          ),
                          BoxShadow(
                            color: Colors.black.withValues(alpha:0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(-2, 0)

                          ),
                          BoxShadow(
                            color: Colors.black.withValues(alpha:0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 0)

                          )
                        ],
                          
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFF2A359),
                          ),
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center, // Center the texts
                                children: [
                                  SizedBox(height: 10,),
                                  Text('Rounds: 5', style: TextStyle(color: Color(0xFF240B36),fontWeight: FontWeight.bold,  // Make the text bold
                          fontSize: 16,)),
                                  SizedBox(height: 8,),
                                  Text('Team A Score: 29', style: TextStyle(color: Color(0xFF240B36),fontWeight: FontWeight.bold,  // Make the text bold
                          fontSize: 16,)),
                                  Text('Team B Score: 45', style: TextStyle(color: Color(0xFF240B36),fontWeight: FontWeight.bold,  // Make the text bold
                          fontSize: 16,)),
                                  SizedBox(height: 10,),
                                  
                                ],
                              ),
                            ),
                        ),
                        ),
                      // Third section (Card C with an arrow and 10% width)
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05, // 10% of the total width
                        child: Center(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.arrow_forward, // Arrow icon pointing to the right
                                  color: Color(0xFF252627), // Set icon color to #FCF7FF
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
            Positioned(
              top: 12,
              right: 0,
              child: Text('Date: 99/12/99', style: TextStyle(color: Color(0xFFBB0A21),fontWeight: FontWeight.bold,  // Make the text bold
                        fontSize: 16,),// Transparent background for the CircleAvatar
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
