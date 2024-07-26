import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: ctrl1,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: ctrl2,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  ctrl1.clear();
                  ctrl2.clear();
                },
                child: const Text('Clear'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  var a = ctrl1.text;
                  var b = int.parse(ctrl2.text);
                  debugPrint(a);
                  debugPrint(b.toString());
                  debugPrint(a.runtimeType.toString());
                  debugPrint(b.runtimeType.toString());
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }
}
