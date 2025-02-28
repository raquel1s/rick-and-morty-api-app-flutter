import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;

  const DetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Character Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(character.name), 
      ),
    );
  }
}