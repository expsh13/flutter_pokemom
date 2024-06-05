import 'package:flutter/material.dart';

class PokeDetail extends StatelessWidget {
  const PokeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Image.network(
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
                  width: 100,
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'No.25',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ]),
            const Text(
              'pikachu',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Chip(
              label: Text(
                'electric',
                style: TextStyle(
                    color: Colors.yellow.computeLuminance() > 0.5
                        ? Colors.black
                        : Colors.white),
              ),
              backgroundColor: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
