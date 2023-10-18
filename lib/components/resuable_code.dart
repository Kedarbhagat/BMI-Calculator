import 'package:flutter/material.dart';
class resuableCode extends StatelessWidget {
  resuableCode({required this.colour, required this.cardchild , required this.onpress});
  final Color colour;
  final Widget cardchild;
  final VoidCallback onpress ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          child: Container(
            child: cardchild,
            decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
