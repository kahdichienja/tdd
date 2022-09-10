import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("object");
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Text("Users"),
    );
  }
}
