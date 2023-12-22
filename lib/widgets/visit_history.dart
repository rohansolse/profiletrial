import 'package:flutter/material.dart';
import 'package:my_app/model/visit_history.dart';

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
//               SquareTileVisitHistory(
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

class SquareTileVisitHistory extends StatelessWidget {
  final String title;
  final String viewMoreText;
  final List<RowData2> visitData;

  const SquareTileVisitHistory({
    super.key,
    required this.title,
    required this.viewMoreText,
    required this.visitData,
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
              children: visitData.map((row) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(15), // Set border radius
                    child: Container(
                      color: row.backgroundColor,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      row.date,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    Text(
                                      row.hospital,
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
