import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, String?>> fetchDataLocally() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // Retrieve data using keys
  String? username = prefs.getString('username');
  String? firstname = prefs.getString('firstname');
  String? lastname = prefs.getString('lastname');
  String? birthday = prefs.getString('birthday');
  String? gender = prefs.getString('gender');
  return {
    'username': username,
    'firstName': firstname,
    'lastName': lastname,
    'birthday': birthday,
    'gender': gender,
  };
  // Do something with the retrieved data
}

void addUserToFirestore(Map<String, String?> userData) {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  if (user == null) {
    print('No user is currently signed in.');
    return;
  }

  String uid = user.uid;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  users.doc(uid).set({
    'username': userData['username'],
    'firstName': userData['firstName'],
    'lastName': userData['lastName'],
    'birthday': userData['birthday'],
    'gender': userData['gender'],
    'college':'ecu',
  }).then((_){
    print('User added to Firestore successfully!');
    // Add the Userstats subcollection
    users.doc(uid).collection('Userstats').add({
      'levelprogress': '0',
      'courseprogress': '0',
      'quizzes': '0',
      'certificate': '0',
      'streak': '0',
    }).then((_) {
      print('Userstats added to Firestore successfully!');
    }).catchError((error) {
      print('Failed to add Userstats to Firestore: $error');
    });

  }).catchError((error) {
    print('Failed to add user to Firestore: $error');
  });
}
