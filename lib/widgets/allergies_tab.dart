import 'package:flutter/material.dart';
import 'package:my_app/model/allergry_model.dart';

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
