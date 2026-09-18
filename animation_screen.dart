import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double tamanho = 100;
  double altura = 100;
  Color cor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: tamanho,
              height: altura,
              color: cor,
              child: const Center(
                child: Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  tamanho = tamanho == 100 ? 250 : 100;
                  altura = altura == 100 ? 250 : 100;
                  cor = cor == Colors.blue ? Colors.greenAccent : Colors.blue;
                });
              },
              child: const Text("Animar"),
            ),
          ],
        ),
      ),
    );
  }
}
