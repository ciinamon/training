import 'package:flutter/material.dart';
import 'package:training/ctrl.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Detail'),
        ),
        body: FutureBuilder(
          future: getDocs(id),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(snapshot.data!.data()!['name'].toString()),
                    Text(snapshot.data!.data()!['age'].toString()),
                  ],
                ),
              );
            }
            return const Text('text');
          },
        ));
  }
}
