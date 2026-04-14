// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../model/users_model.dart';

// class UserScreen extends StatefulWidget {
//   const UserScreen({super.key});

//   @override
//   State<UserScreen> createState() => _UserScreenState();
// }

// class _UserScreenState extends State<UserScreen> {
//   List<User> users = [];
//   bool isloading = false;

//   Future<void> fetchUSers() async {
//     setState(() {
//       isloading = true;
//     });

//     final response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/users/'),
//     );
//     // 404
//     // 505
//     // 200
//     if (response.statusCode == 200) {
//       List<dynamic> jsonData = json.decode(response.body);
//       setState(() {
//         users = jsonData.map((json) => User.fromJson(json)).toList();
//         isloading = false;
//       });
//     }
//   }

//   @override
//   void initState() {
//     fetchUSers();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: isloading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: users.length,
//               itemBuilder: (context, index) {
//                 User user = users[index];

//                 return ListTile(
//                   title: Text(user.name),
//                   subtitle: Text(user.email),
//                 );
//               },
//             ),
//     );
//   }
// }
