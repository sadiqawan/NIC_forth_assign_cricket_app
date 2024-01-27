import 'package:flutter/material.dart';

class PlayerHistoryScreen extends StatelessWidget {
  final playerImage;
  final playerHistory;

  const PlayerHistoryScreen(
      {super.key, required this.playerImage, required this.playerHistory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('History')),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image(image: playerImage),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            playerHistory,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
