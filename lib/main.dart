import 'package:flutter/material.dart';
import 'package:myapp/custmwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Chats"),
          ),
        ),
        body: ListView(
          children: [
            customWidget('Faraz', 'Kaha ho', 8, 'user1'),
            customWidget('Faraz', 'Kaha ho', 0, 'user2'),
            customWidget('Faraz', 'Kaha ho', 16, 'user1'),
            customWidget('Faraz', 'Kaha ho', 0, 'user2'),
            customWidget('Faraz', 'Kaha ho', 4, 'user1'),
            customWidget('Faraz', 'Kaha ho', 0, 'user2'),
            customWidget('Faraz', 'Kaha ho', 1, 'user1'),
            customWidget('Faraz', 'Kaha ho', 8, 'user1'),
            customWidget('Faraz', 'Kaha ho', 0, 'user2'),
            customWidget('Faraz', 'Kaha ho', 16, 'user1'),
            customWidget('Faraz', 'Kaha ho', 0, 'user2'),
            customWidget('Faraz', 'Kaha ho', 4, 'user1'),
            customWidget('Faraz', 'Kaha ho', 0, 'user2'),
            customWidget('Faraz', 'Kaha ho', 1, 'user1'),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Faraz'),
                accountEmail: const Text('farazfarhan@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('Assets/images/user2.png'),
                  ),
                ),
                decoration: const BoxDecoration(color: Colors.lightBlueAccent),
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () => print('Profile tapped'),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Message'),
                onTap: () => print('Message tapped'),
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text('Share'),
                onTap: () => print('Share tapped'),
              ),
              ListTile(
                leading: const Icon(Icons.notification_add),
                title: const Text('Notifications'),
                onTap: () => print('Notifications tapped'),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Setting'),
                onTap: () => print('Setting tapped'),
              ),
                            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Sign Out'),
                onTap: () => print('Signout tapped'),
              )
            ],
          ),
        ),
        drawerEnableOpenDragGesture: true,
      ),
    );
  }
}
