import 'package:flutter/material.dart';
import 'package:my_app/model/current_vitals.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Square Tile'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               CurrnetVitalsTile(
//                 title: 'Title',
//                 viewMoreText: 'View More',
//                 rowsData: [
//                   RowData(title: 'Row 1', value: 'Value 1'),
//                   RowData(title: 'Row 2', value: 'Value 2'),
//                   RowData(title: 'Row 3', value: 'Value 3'),
//                   RowData(title: 'Row 4', value: 'Value 4'),
//                   RowData(title: 'Row 5', value: 'Value 5'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class CurrnetVitalsTile extends StatelessWidget {
  final String title;
  final String viewMoreText;
  final List<RowData> rowsData;

  const CurrnetVitalsTile({
    super.key,
    required this.title,
    required this.viewMoreText,
    required this.rowsData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      // margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle view more action
                  },
                  child: Text(
                    viewMoreText,
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Column(
              children: rowsData.map((row) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(15), // Set border radius
                    child: Container(
                      color: row.backgroundColor,
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 5.0,
                                    left: 0,
                                  ),
                                  child: Icon(
                                    row.icon,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      row.title,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    Text(
                                      row.readingDate,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              row.value,
                              style: TextStyle(
                                fontSize: 15,
                                color: row.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
