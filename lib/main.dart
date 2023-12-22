// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_app/model/current_vitals.dart';
import 'package:my_app/model/visit_history.dart';
import 'package:my_app/widgets/drawer_menu_bar.dart';
import 'package:my_app/widgets/profile_card.dart';
import 'package:my_app/widgets/rich_data_table.dart';
import 'package:my_app/widgets/square_card.dart';
import 'package:my_app/widgets/current_vitals_tile.dart';
import 'package:my_app/widgets/visit_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rich DataTable Example'),
        ),
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: ProfileCard(
                    name: "John Doe",
                    avatarLink: 'assets/images/Avatar.png',
                    dob: "2 Dec 1993",
                    age: "30",
                    gender: "Male",
                    race: "American",
                    ethnicity: "Hispanic",
                    phone: "+1 123 456 789",
                    email: "john.doe@miamibaptist.com",
                    address: "123 South St, Miami Florida 5678",
                    insurance: "United Healthcare",
                  ),
                ),
                Expanded(
                  child: SquareTileVisitHistory(
                    title: 'Visit History',
                    viewMoreText: 'View More',
                    visitData: visitData,
                  ),
                ),
                Expanded(
                  child: CurrnetVitalsTile(
                    title: 'Current Vitals',
                    viewMoreText: 'View More',
                    rowsData: cardData,
                  ),
                ),
              ],
            ),
          ],
        ),

        // rounded title
        // body: const RoundedTile(
        //   title: "Current Vitals",
        //   viewMoreText: "View More",
        // ),

        // data table
        // body: const MyDataTable(),

        // Current Vitals
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SquareTile(
        //         title: 'Current Vitals',
        //         viewMoreText: 'View More',
        //         rowsData: cardData,
        //       ),
        //     ],
        //   ),
        // ),

        // visit history
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SquareTileVisitHistory(
        //         title: 'Visit History',
        //         viewMoreText: 'View More',
        //         visitData: visitData,
        //       ),
        //     ],
        //   ),
        // ),

        // profile card
        // body: const ProfileCard(
        //   name: "John Doe",
        //   avatarLink: 'assets/images/Avatar.png',
        //   dob: "2 Dec 1993",
        //   age: "30",
        //   gender: "Male",
        //   race: "American",
        //   ethnicity: "Hispanic",
        //   phone: "+1 123 456 789",
        //   email: "john.doe@miamibaptist.com",
        //   address: "123 South St, Miami Florida 5678",
        //   insurance: "United Healthcare",
        // ),
      ),
    );
  }
}
