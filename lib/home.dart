import 'package:flutter/material.dart';
import 'package:training/ctrl.dart';
import 'package:training/data.dart';
import 'package:training/detail.dart';
import 'package:training/input_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    debugPrint('bangun ulang');
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
      body: Column(
        children: [
          FutureBuilder(
            future: getColl(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasData) {
                return Column(
                  children: [
                    ...List.generate(
                      snapshot.data!.docs.length,
                      (index) {
                        final id = snapshot.data!.docs[index].id;
                        return Card(
                          child: ListTile(
                            title: Text((snapshot.data!.docs[index].data()['name'])),
                            subtitle: Text(snapshot.data!.docs[index].id),
                            tileColor: Colors.transparent,
                            selectedTileColor: Colors.grey,
                            selected: selectedId == id,
                            onTap: () {
                              setState(() {
                                selectedId = id;
                                debugPrint(selectedId);
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageDetail(
                                          id: id,
                                        )),
                              );
                            },
                          ),
                        );
                      },
                    )
                  ],
                );
              }
              return const Text('any');
            },
          )
          // OutlinedButton(
          //     onPressed: () async {
          //       await FirebaseFirestore.instance.collection('username').doc('abc').set({'nama': 'fellisa'});
          //     },
          //     child: const Text('C')),
          // const SizedBox(height: 20),
          // OutlinedButton(
          //     onPressed: () async {
          //       await FirebaseFirestore.instance.collection('username').get();
          //     },
          //     child: const Text('R')),
          // const SizedBox(height: 20),
          // OutlinedButton(
          //     onPressed: () async {
          //       await FirebaseFirestore.instance.collection('username').doc('abc').get();
          //     },
          //     child: const Text('R Document')),
          // const SizedBox(height: 20),
          // OutlinedButton(
          //     onPressed: () async {
          //       await FirebaseFirestore.instance.collection('username').doc('abc').update({'nama': 'fellisa new'});
          //     },
          //     child: const Text('U')),
          // const SizedBox(height: 20),
          // OutlinedButton(
          //     onPressed: () async {
          //       await FirebaseFirestore.instance.collection('username').doc('abc').delete();
          //     },
          //     child: const Text('D')),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
}
