import 'package:flutter/material.dart';
import 'package:word_hurdle/wordle.dart';

class WordleView extends StatelessWidget {
  final Wordle wordle;
  const WordleView({super.key, required this.wordle});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: wordle.existInTarget
            ? const Color.fromARGB(255, 41, 72, 250)
            : wordle.doesNotExistInTarget
                ? Colors.blueGrey.shade400
                : null,
        border: Border.all(
          color: Colors.cyanAccent,
          width: 1.5,
        ),
      ),
      child: Text(
        wordle.letter,
        style: TextStyle(
          fontSize: 16,
          color: wordle.existInTarget
              ? const Color.fromARGB(255, 255, 230, 0)
              : wordle.doesNotExistInTarget
                  ? Colors.white70
                  : Colors.white,
        ),
      ),
    );
  }
}
