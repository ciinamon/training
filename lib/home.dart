import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username List'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: () {}, child: const Text('C')),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: const Text('R')),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: const Text('U')),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: const Text('D')),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
