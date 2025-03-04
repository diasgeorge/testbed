import 'package:flutter/material.dart';

void main() {
  runApp(const PokerTableApp());
}

class PokerTableApp extends StatelessWidget {
  const PokerTableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poker Table',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PokerTableScreen(),
    );
  }
}

class PokerTableScreen extends StatelessWidget {
  const PokerTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poker Table Layout'),
      ),
      body: Stack(
        children: [
          // Poker Table moved 50% up from the screen
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25, // Move the table up 50%
            left: MediaQuery.of(context).size.width * 0.1, // Center horizontally
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
              height: MediaQuery.of(context).size.height * 0.5, // 50% of the screen height
              decoration: BoxDecoration(
                color: Colors.green, // Poker table green color
                borderRadius: BorderRadius.circular(30), // Rounded corners
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
            ),
          ),
          // Player 1 (Top of the table, centered)
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25 + 10, // Centered on top side of table
            left: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on top side
            right: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on top side
            child: const PlayerCard(playerName: "Player 1"),
          ),
          // Player 2 (Right side of the table, centered)
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35, // Centered vertically on the right side
            right: 10,
            child: const PlayerCard(playerName: "Player 2"),
          ),
          // Player 3 (Bottom of the table, centered)
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on bottom side
            right: MediaQuery.of(context).size.width * 0.1, // Centered horizontally on bottom side
            child: const PlayerCard(playerName: "Player 3"),
          ),
          // Player 4 (Left side of the table, centered)
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35, // Centered vertically on the left side
            left: 10,
            child: const PlayerCard(playerName: "Player 4"),
          ),
          // Cards at the bottom (4 cards in each row)
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // First Row of Cards (4 cards)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      PokerCard(cardNumber: 1),
                      PokerCard(cardNumber: 2),
                      PokerCard(cardNumber: 3),
                      PokerCard(cardNumber: 4),
                    ],
                  ),
                  const SizedBox(height: 10), // Spacer between rows
                  // Second Row of Cards (4 cards)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      PokerCard(cardNumber: 5),
                      PokerCard(cardNumber: 6),
                      PokerCard(cardNumber: 7),
                      PokerCard(cardNumber: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Card above Player 1
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25 - 60, // Above Player 1
            left: MediaQuery.of(context).size.width * 0.1 + 30, // Center horizontally on Player 1
            child: const PokerCard(cardNumber: 1),
          ),
          // Card above Player 2
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35 - 60, // Above Player 2
            right: 30, // Center horizontally on Player 2
            child: const PokerCard(cardNumber: 2),
          ),
          // Card above Player 3
          Positioned(
            bottom: 90, // Above Player 3
            left: MediaQuery.of(context).size.width * 0.1 + 30, // Center horizontally on Player 3
            child: const PokerCard(cardNumber: 3),
          ),
          // Card above Player 4
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35 - 60, // Above Player 4
            left: 30, // Center horizontally on Player 4
            child: const PokerCard(cardNumber: 4),
          ),
        ],
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final String playerName;

  const PlayerCard({super.key, required this.playerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.brown,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Center(
        child: Text(
          playerName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class PokerCard extends StatelessWidget {
  final int cardNumber;

  const PokerCard({super.key, required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 2),
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
