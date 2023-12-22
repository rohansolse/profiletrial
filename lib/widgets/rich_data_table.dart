// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:my_app/model/model.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 10,
      horizontalMargin: 10,
      columns: [
        DataColumn(
          label: Container(
            padding: const EdgeInsets.all(8),
            child: const Center(
              child: Text(
                'Avatar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const DataColumn(label: Text('Date')),
        const DataColumn(label: Text('Time')),
        const DataColumn(label: Text('Text')),
        const DataColumn(label: Text('Clickable 1')),
        const DataColumn(label: Text('Clickable 2')),
      ],
      rows: List<DataRow>.generate(
        userDataList.length,
        (index) => DataRow(
          color: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              }
              return index % 2 == 0 ? Colors.grey[200]! : Colors.grey[100]!;
            },
          ),
          cells: [
            DataCell(
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 8,
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage(userDataList[index].avatarImagePath),
                      radius: 20,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      right: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(userDataList[index].name),
                        Text('DOB: ${userDataList[index].dob}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DataCell(Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(userDataList[index].date),
            )),
            DataCell(Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(userDataList[index].time),
            )),
            DataCell(Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(userDataList[index].text),
            )),
            DataCell(
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button click
                    print('Button 1 clicked for row $index');
                  },
                  child: const Text('Clickable 1'),
                ),
              ),
            ),
            DataCell(
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button click
                    print('Button 2 clicked for row $index');
                  },
                  child: const Text('Clickable 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
