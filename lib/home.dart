import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:training/input_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username List'),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const InputPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('username').doc('abc').set({'nama': 'fellisa'});
                },
                child: const Text('C')),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('username').get();
                },
                child: const Text('R')),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('username').doc('abc').get();
                },
                child: const Text('R Document')),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('username').doc('abc').update({'nama': 'fellisa new'});
                },
                child: const Text('U')),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('username').doc('abc').delete();
                },
                child: const Text('D')),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
