class MyTableRowData {
  final String date;
  final String allergies;
  final String reactions;

  MyTableRowData({
    required this.date,
    required this.allergies,
    required this.reactions,
  });
}

final List<MyTableRowData> tableData = [
  MyTableRowData(
    date: '2023-01-01',
    allergies: 'Peanuts',
    reactions: 'Rash',
  ),
  MyTableRowData(
    date: '2023-02-15',
    allergies: 'Dust',
    reactions: 'Sneezing',
  ),
  MyTableRowData(
    date: '2023-03-10',
    allergies: 'Cat Hair',
    reactions: 'Watery Eyes',
  ),
  // Add more data as needed
];
