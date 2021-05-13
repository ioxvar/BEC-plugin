// /*import 'package:flutter/material.dart';

// // Import the firebase_core and cloud_firestore plugin
// //import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddUser extends StatelessWidget {
//   final String fullcompany;
//   final String company;
//   final int age;

//   AddUser(this.fullcompany, this.company, this.age);

//   @override
//   Widget build(BuildContext context) {
//     // Create a CollectionReference called users that references the firestore collection
//     CollectionReference users = FirebaseFirestore.instance.collection('users');

//     Future<void> addUser() {
//       // Call the user's CollectionReference to add a new user
//       return users
//           .add({
//             'full_company': fullcompany, // John Doe
//             'company': company, // Stokes and Sons
//             'age': age // 42
//           })
//           .then((value) => print("User Added"))
//           .catchError((error) => print("Failed to add user: $error"));
//     }

//     return TextButton(
//       onPressed: addUser,
//       child: Text(
//         "Add User",
//       ),
//     );
//   }
// }
// */

// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {
//   //final String uid;
//   DatabaseService();

//   // collection reference
//   final CollectionReference testData =
//       FirebaseFirestore.instance.collection('deets');

//   Future<void> updateUserData(String name, String company, int age) async {
//     return await testData.doc().set({
//       'name': name,
//       'company': company,
//       'age': age,
//     });
//   }

//   Stream<QuerySnapshot> get data {
//     return testData.snapshots();
//   }
// }
