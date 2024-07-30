import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> createDocument(Map<String, dynamic> data) async {
  await FirebaseFirestore.instance.collection('username').doc().set(data);
}

Future<QuerySnapshot<Map<String, dynamic>>> getColl() async {
  var getColl = await FirebaseFirestore.instance.collection('username').get();
  return getColl;
}

Future<DocumentSnapshot<Map<String, dynamic>>> getDocs(String id) async {
  var getDocs = await FirebaseFirestore.instance.collection('username').doc(id).get();
  return getDocs;
}
