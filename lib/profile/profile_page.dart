import 'package:flutter/material.dart';
import 'package:quizapp/services/auth_service.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("P R O F I L E"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
          child: Text("Signout"),
        ),
      ),
    );
  }
}
