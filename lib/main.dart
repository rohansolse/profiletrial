import 'package:flutter/material.dart';
import 'package:my_app/model/allergry_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyTabs(),
    );
  }
}

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs Example'),
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(text: 'Health COnditionas'),
            Tab(text: 'Allergies'),
            Tab(text: 'Lab Results'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Tab 1 Content')),
          AllergiesTab(),
          Center(child: Text('Tab 3 Content')),
        ],
      ),
    );
  }
}

class AllergiesTab extends StatelessWidget {
  const AllergiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Date')),
        DataColumn(label: Text('Allergies')),
        DataColumn(label: Text('Reactions')),
      ],
      rows: allergies.map((Allergy allergy) {
        return DataRow(
          color: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              // Use null-aware operator to provide a default color
              return Colors.grey[200] ?? Colors.transparent;
            },
          ),
          cells: [
            DataCell(
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Text(allergy.date),
              ),
            ),
            DataCell(
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Text(allergy.allergies),
              ),
            ),
            DataCell(
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Text(allergy.reactions),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
