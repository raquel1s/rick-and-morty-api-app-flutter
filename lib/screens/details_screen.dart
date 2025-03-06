import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;

  const DetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Character Details",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const SizedBox(height: 100),
                  Text(
                    character.name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 25),
                  Image.network(character.image),
                  const SizedBox(height: 25),
                  Text('Status: ${character.status}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text('Specie: ${character.species}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text('Gender: ${character.gender}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text('Origin: ${character.originName}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text('Location: ${character.locationName}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
          ),
        );
  }
}
