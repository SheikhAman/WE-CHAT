import 'package:flutter/material.dart';
import 'package:we_chat/page/auth/auth_service.dart';
import 'package:we_chat/page/launcher_page.dart';

class UserProfilePage extends StatefulWidget {
  static const String routeName = '/user_profile';
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProiflePageState();
}

class _UserProiflePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserProfile'),
        actions: [
          IconButton(
            onPressed: () {
              AuthService.logout();
              Navigator.pushReplacementNamed(context, LauncherPage.routeName);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
