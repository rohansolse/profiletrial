import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle home tap
              // Close the drawer if needed
              // toggleDrawer();
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle settings tap
              // Close the drawer if needed
              // toggleDrawer();
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              // Handle profile tap
              // Close the drawer if needed
              // toggleDrawer();
            },
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Messages'),
            onTap: () {
              // Handle messages tap
              // Close the drawer if needed
              // toggleDrawer();
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout tap
              // Close the drawer if needed
              // toggleDrawer();
            },
          ),
        ],
      ),
    );
  }
}
