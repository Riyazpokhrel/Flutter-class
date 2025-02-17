import 'package:flutter/material.dart';
import 'Navigate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/riyaz.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 15,
                    child: Icon(Icons.edit, color: Colors.white, size: 15),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Riyaz Pokhrel',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'pokhrelriyaz@gmail.com',
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                const ProfileOption(icon: Icons.edit, text: 'Edit Profile'),
                const ProfileOption(icon: Icons.lock, text: 'Add Pin'),
                const ProfileOption(icon: Icons.settings, text: 'Settings'),
                const ProfileOption(
                    icon: Icons.person_add, text: 'Invite a Friend'),
                const SizedBox(height: 10),
                const ProfileOption(
                    icon: Icons.logout, text: 'Logout', isLogout: true),
                ProfileOption(
                  icon: Icons.arrow_back_ios_new,
                  text: 'Navigate',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isLogout;
  final VoidCallback? onTap;

  const ProfileOption({
    required this.icon,
    required this.text,
    this.isLogout = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.black),
      title: Text(
        text,
        style: TextStyle(color: isLogout ? Colors.red : Colors.black),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
