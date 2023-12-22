// // ignore_for_file: unused_import

// import 'package:flutter/material.dart';
// import 'package:my_app/model/current_vitals.dart';
// import 'package:my_app/model/visit_history.dart';
// import 'package:my_app/widgets/drawer_menu_bar.dart';
// import 'package:my_app/widgets/profile_card.dart';
// import 'package:my_app/widgets/rich_data_table.dart';
// import 'package:my_app/widgets/square_card.dart';
// import 'package:my_app/widgets/current_vitals_tile.dart';
// import 'package:my_app/widgets/visit_history.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Rich DataTable Example'),
//         ),
//         body: Column(
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Expanded(
//                   child: ProfileCard(
//                     name: "John Doe",
//                     avatarLink: 'assets/images/Avatar.png',
//                     dob: "2 Dec 1993",
//                     age: "30",
//                     gender: "Male",
//                     race: "American",
//                     ethnicity: "Hispanic",
//                     phone: "+1 123 456 789",
//                     email: "john.doe@miamibaptist.com",
//                     address: "123 South St, Miami Florida 5678",
//                     insurance: "United Healthcare",
//                   ),
//                 ),
//                 Expanded(
//                   child: SquareTileVisitHistory(
//                     title: 'Visit History',
//                     viewMoreText: 'View More',
//                     visitData: visitData,
//                   ),
//                 ),
//                 Expanded(
//                   child: CurrnetVitalsTile(
//                     title: 'Current Vitals',
//                     viewMoreText: 'View More',
//                     rowsData: cardData,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),

//         // rounded title
//         // body: const RoundedTile(
//         //   title: "Current Vitals",
//         //   viewMoreText: "View More",
//         // ),

//         // data table
//         // body: const MyDataTable(),

//         // Current Vitals
//         // body: SingleChildScrollView(
//         //   child: Column(
//         //     children: [
//         //       SquareTile(
//         //         title: 'Current Vitals',
//         //         viewMoreText: 'View More',
//         //         rowsData: cardData,
//         //       ),
//         //     ],
//         //   ),
//         // ),

//         // visit history
//         // body: SingleChildScrollView(
//         //   child: Column(
//         //     children: [
//         //       SquareTileVisitHistory(
//         //         title: 'Visit History',
//         //         viewMoreText: 'View More',
//         //         visitData: visitData,
//         //       ),
//         //     ],
//         //   ),
//         // ),

//         // profile card
//         // body: const ProfileCard(
//         //   name: "John Doe",
//         //   avatarLink: 'assets/images/Avatar.png',
//         //   dob: "2 Dec 1993",
//         //   age: "30",
//         //   gender: "Male",
//         //   race: "American",
//         //   ethnicity: "Hispanic",
//         //   phone: "+1 123 456 789",
//         //   email: "john.doe@miamibaptist.com",
//         //   address: "123 South St, Miami Florida 5678",
//         //   insurance: "United Healthcare",
//         // ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical Menu Bar'),
      ),
      body: const Row(
        children: [
          // Constant menu bar with 5 icons
          MenuBar(),
          Expanded(
            child: Center(
              child: Text('Main Content Goes Here'),
            ),
          ),
        ],
      ),
      // drawer: const CustomDrawer(),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              // Handle home tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: () {
              // Handle settings tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () {
              // Handle profile tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () {
              // Handle profile tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.mail),
            onPressed: () {
              // Handle messages tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Handle logout tap
            },
          ),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle settings tap
              // Close the drawer if needed
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              // Handle profile tap
              // Close the drawer if needed
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Messages'),
            onTap: () {
              // Handle messages tap
              // Close the drawer if needed
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout tap
              // Close the drawer if needed
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
