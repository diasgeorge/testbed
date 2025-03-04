import 'package:flutter/material.dart';

class PokerTable extends StatefulWidget {
  const PokerTable({super.key});

  @override
  State<PokerTable> createState() => _PokerTableState();
}

class _PokerTableState extends State<PokerTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context,orientation) {
        if (orientation == Orientation.portrait ) {
          return PokerTableScreen();
        }
        else {
         return _landscapePokerTable();
        }
      }),
    );
  }
}

class PokerTableScreen extends StatelessWidget {
  const PokerTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Poker Table Layout'),
      ),
      body: Container(
        color: const Color(0xFF29282C),
        child: Stack(
          children: [
            // Poker Table moved 50% up from the screen
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05, // Move the table up 50%
              left: MediaQuery.of(context).size.width * 0.07, // Center horizontally
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85, // 80% of the screen width
                  height: MediaQuery.of(context).size.height * 0.60, // 50% of the screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFfcf7ff).withValues(alpha: 0.5),  // Color of the border
                      width: 6,    // Width of the border 
                    ),
                    borderRadius: BorderRadius.circular(140),),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
                  height: MediaQuery.of(context).size.height * 0.55, // 50% of the screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFfcf7ff).withValues(alpha: 0.5),  // Color of the border
                      width: 12,            // Width of the border
                    ),
                    color: const Color(0xFF29282C), // Poker table green color
                    borderRadius: BorderRadius.circular(140), // Rounded corners
                    boxShadow:  [
                      BoxShadow(
                        color: Color(0xFF29282C),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                            BoxShadow(
                              color: Colors.black.withValues(alpha:0.7),
                              spreadRadius: 6,
                              blurRadius: 8,
                              offset: Offset(0, 0)
                
                            )
                    ],
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9, // 80% of the screen width
                  height: MediaQuery.of(context).size.height * 0.4, // 50% of the screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFfcf7ff).withValues(alpha: 0.6),  // Color of the border
                      width: 16,            // Width of the border
                    ),
                    color: const Color(0xFF29282C), // Poker table green color
                    borderRadius: BorderRadius.circular(120), // Rounded corners
                    boxShadow:  [
                      BoxShadow(
                        color: Color(0xFF29282C),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                            BoxShadow(
                              color: Colors.black.withValues(alpha:0.7),
                              spreadRadius: 6,
                              blurRadius: 8,
                              offset: Offset(0, 0)
                
                            )
                    ],
                  ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.22, // Move the table up 50%
              left: MediaQuery.of(context).size.width * 0.35, // Center horizontally
              child: Container(
                width: MediaQuery.of(context).size.width * 0.32, // 80% of the screen width
                height: MediaQuery.of(context).size.height * 0.2, // 50% of the screen height
                decoration: BoxDecoration(
                  border: Border.all(
      color: const Color(0xFFfcf7ff),  // Color of the border
      width: 1.5,            // Width of the border
    ),
                  color: const Color(0xFF29282C), // Poker table green color
                  borderRadius: BorderRadius.circular(40), // Rounded corners
                  boxShadow:  [
                    BoxShadow(
                      color: Color(0xFF29282C),
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                    BoxShadow(
                            color: Colors.white.withValues(alpha:0.7),
                            spreadRadius: 6,
                            blurRadius: 8,
                            offset: Offset(0, 0)

                          )
                  ],
                ),
              ),
            ),
            // Player 1 (Top of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.015, // Centered on top side of table
              left: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on top side
              right: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on top side
              child: const PlayerCard(playerName: "Player 1"),
            ),
            // Player 2 (Right side of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.28, // Centered vertically on the right side
              right: 10,
              child: const PlayerCard(playerName: "Player 2"),
            ),
            // Player 3 (Bottom of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.55,
              left: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on bottom side
              right: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on bottom side
              child: const PlayerCard(playerName: "Player 3"),
            ),
            // Player 4 (Left side of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.28, // Centered vertically on the left side
              left: 10,
              child: const PlayerCard(playerName: "Player 4"),
            ),
            // Cards at the bottom (4 cards in each row)
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Column(
                  children: [
                    // First Row of Cards (4 cards)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          PokerCard(cardNumber: 1),
                          PokerCard(cardNumber: 2),
                          PokerCard(cardNumber: 3),
                          PokerCard(cardNumber: 4),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10), // Spacer between rows
                    // Second Row of Cards (4 cards)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          PokerCard(cardNumber: 5),
                          PokerCard(cardNumber: 6),
                          PokerCard(cardNumber: 7),
                          PokerCard(cardNumber: 8),
                        ],
                      ),
                    ),
                  ],
              ),
            ),
            // Card above Player 1
            Positioned(
              top: MediaQuery.of(context).size.height * 0.16, // Above Player 1
              left: MediaQuery.of(context).size.width * 0.43, // Center horizontally on Player 1
              child: const PokerCard(cardNumber: 1),
            ),
            // Card above Player 2
            Positioned(
              top: MediaQuery.of(context).size.height * 0.26, // Above Player 2
              right: MediaQuery.of(context).size.width * 0.27, // Center horizontally on Player 2
              child: const PokerCard(cardNumber: 2),
            ),
            // Card above Player 3
            Positioned(
              top: MediaQuery.of(context).size.height * 0.36 , 
              left: MediaQuery.of(context).size.width * 0.43, // Center horizontally on Player 3
              child: const PokerCard(cardNumber: 3),
            ),
            // Card above Player 4
            Positioned(
              top: MediaQuery.of(context).size.height * 0.26, // Above Player 2
              left: MediaQuery.of(context).size.width * 0.28, // Center horizontally on Player 4
              child: const PokerCard(cardNumber: 4),
            ),
          ],
        ),
      ),
    );
  }
}

class _landscapePokerTable extends StatelessWidget {
  const _landscapePokerTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF29282C),
        child: Stack(
          children: [
            // Poker Table moved 50% up from the screen
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1, // Move the table up 50%
              left: MediaQuery.of(context).size.width * 0.1, // Center horizontally
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80, // 80% of the screen width
                  height: MediaQuery.of(context).size.height * 0.75, // 50% of the screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFfcf7ff).withValues(alpha: 0.5),  // Color of the border
                      width: 6,    // Width of the border 
                    ),
                    borderRadius: BorderRadius.circular(140),),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
                  height: MediaQuery.of(context).size.height * 0.55, // 50% of the screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFfcf7ff).withValues(alpha: 0.5),  // Color of the border
                      width: 12,            // Width of the border
                    ),
                    color: const Color(0xFF29282C), // Poker table green color
                    borderRadius: BorderRadius.circular(140), // Rounded corners
                    boxShadow:  [
                      BoxShadow(
                        color: Color(0xFF29282C),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                            BoxShadow(
                              color: Colors.black.withValues(alpha:0.7),
                              spreadRadius: 6,
                              blurRadius: 8,
                              offset: Offset(0, 0)
                
                            )
                    ],
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9, // 80% of the screen width
                  height: MediaQuery.of(context).size.height * 0.4, // 50% of the screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFfcf7ff).withValues(alpha: 0.6),  // Color of the border
                      width: 16,            // Width of the border
                    ),
                    color: const Color(0xFF29282C), // Poker table green color
                    borderRadius: BorderRadius.circular(120), // Rounded corners
                    boxShadow:  [
                      BoxShadow(
                        color: Color(0xFF29282C),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                            BoxShadow(
                              color: Colors.black.withValues(alpha:0.7),
                              spreadRadius: 6,
                              blurRadius: 8,
                              offset: Offset(0, 0)
                
                            )
                    ],
                  ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.39, // Move the table up 50%
              left: MediaQuery.of(context).size.width * 0.34, // Center horizontally
              child: Container(
                width: MediaQuery.of(context).size.width * 0.32, // 80% of the screen width
                height: MediaQuery.of(context).size.height * 0.2, // 50% of the screen height
                decoration: BoxDecoration(
                  border: Border.all(
      color: const Color(0xFFfcf7ff),  // Color of the border
      width: 1.5,            // Width of the border
    ),
                  color: const Color(0xFF29282C), // Poker table green color
                  borderRadius: BorderRadius.circular(40), // Rounded corners
                  boxShadow:  [
                    BoxShadow(
                      color: Color(0xFF29282C),
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                    BoxShadow(
                            color: Colors.white.withValues(alpha:0.7),
                            spreadRadius: 6,
                            blurRadius: 8,
                            offset: Offset(0, 0)

                          )
                  ],
                ),
              ),
            ),
            // Player 1 (Top of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.04, // Centered on top side of table
              left: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on top side
              right: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on top side
              child: const PlayerCard(playerName: "Player 1"),
            ),
            // Player 2 (Right side of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.38, // Centered vertically on the right side
              right: MediaQuery.of(context).size.width * 0.08,
              child: const PlayerCard(playerName: "Player 2"),
            ),
            // Player 3 (Bottom of the table, centered)
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.01, // Centered horizontally on bottom side
              right: MediaQuery.of(context).size.width * 0.20, // Centered horizontally on bottom side
              child: const PlayerCard(playerName: "Player 3"),
            ),
            // Player 4 (Left side of the table, centered)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.38, // Centered vertically on the left side
              left: 60,
              child: const PlayerCard(playerName: "Player 4"),
            ),
            // Cards at the bottom (4 cards in each row)
            Positioned(
              bottom: 5,
              left: 30,
              child: Column(
                  children: [
                    // Second Row of Cards (4 cards)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          PokerCard(cardNumber: 1),
                          PokerCard(cardNumber: 2),
                          PokerCard(cardNumber: 3),
                          PokerCard(cardNumber: 4),
                          PokerCard(cardNumber: 5),
                          PokerCard(cardNumber: 6),
                          PokerCard(cardNumber: 7),
                          PokerCard(cardNumber: 8),
                        ],
                      ),
                    ),
                  ],
              ),
            ),
            // Card above Player 1
            Positioned(
              top: MediaQuery.of(context).size.height * 0.29, // Above Player 1
              left: MediaQuery.of(context).size.width * 0.465, // Center horizontally on Player 1
              child: const PokerCard(cardNumber: 1),
            ),
            // Card above Player 2
            Positioned(
              top: MediaQuery.of(context).size.height * 0.38, // Above Player 2
              right: MediaQuery.of(context).size.width * 0.38, // Center horizontally on Player 2
              child: const PokerCard(cardNumber: 2),
            ),
            // Card above Player 3
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.26 , 
              left: MediaQuery.of(context).size.width * 0.465, // Center horizontally on Player 3
              child: const PokerCard(cardNumber: 3),
            ),
            // Card above Player 4
            Positioned(
              top: MediaQuery.of(context).size.height * 0.38, // Above Player 2
              left: MediaQuery.of(context).size.width * 0.38, // Center horizontally on Player 4
              child: const PokerCard(cardNumber: 4),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final String playerName;

  const PlayerCard({super.key, required this.playerName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withValues(alpha:0.5),
                            spreadRadius: 6,
                            blurRadius: 8,
                            offset: Offset(0, 0)

                          )
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/28.jpg'), // Player image
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      playerName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              );
  }
}

class PokerCard extends StatelessWidget {
  final int cardNumber;

  const PokerCard({super.key, required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF29282C),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black38, width: 2),
        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withValues(alpha:0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 0)

                          )
                        ],
      ),
      child: Center(
        child: Text(
          'Card $cardNumber',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
