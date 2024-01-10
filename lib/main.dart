import 'package:flutter/material.dart';

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
          title: const Text('Horizontal Scrolling Table'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            dividerThickness: 0.0,
            horizontalMargin: 20.0,
            dataRowColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return const Color.fromRGBO(250, 250, 250, 1);
              },
            ),
            columns: const [
              DataColumn(label: Text('Header 1')),
              DataColumn(label: Text('Header 2')),
              DataColumn(label: Text('Header 3')),
              DataColumn(label: Text('Header 4')),
              DataColumn(label: Text('Header 5')),
              DataColumn(label: Text('Header 6')),
              DataColumn(label: Text('Header 7')),
              DataColumn(label: Text('Header 8')),
              // Add more DataColumn widgets as needed
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('Data 1')),
                  DataCell(Text('Data 2')),
                  DataCell(Text('Data 3')),
                  DataCell(Text('Data 4')),
                  DataCell(Text('Data 5')),
                  DataCell(Text('Data 6')),
                  DataCell(Text('Data 7')),
                  DataCell(Text('Data 8')),
                  // Add more DataCell widgets as needed
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Data 1')),
                  DataCell(Text('Data 2')),
                  DataCell(Text('Data 3')),
                  DataCell(Text('Data 4')),
                  DataCell(Text('Data 5')),
                  DataCell(Text('Data 6')),
                  DataCell(Text('Data 7')),
                  DataCell(Text('Data 8')),
                  // Add more DataCell widgets as needed
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Data 1')),
                  DataCell(Text('Data 2')),
                  DataCell(Text('Data 3')),
                  DataCell(Text('Data 4')),
                  DataCell(Text('Data 5')),
                  DataCell(Text('Data 6')),
                  DataCell(Text('Data 7')),
                  DataCell(Text('Data 8')),
                  // Add more DataCell widgets as needed
                ],
              ),
              // Add more DataRow widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
