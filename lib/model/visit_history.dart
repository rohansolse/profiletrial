import 'package:flutter/material.dart';

class RowData2 {
  final String date;
  final String hospital;
  final String value;
  final Color backgroundColor;
  final Color textColor;

  RowData2({
    required this.date,
    required this.hospital,
    required this.value,
    required this.backgroundColor,
    required this.textColor,
  });
}

final visitData = [
  RowData2(
    date: "Nov 29, 2023 - 12:00 PM",
    hospital: "Florida hospital",
    value: "Follow Up",
    backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    textColor: const Color.fromRGBO(0, 0, 0, 1),
  ),
  RowData2(
    date: "Oct 02, 2023 - 13:00 PM",
    hospital: "Florida hospital",
    value: "Follow Up",
    backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    textColor: const Color.fromRGBO(0, 0, 0, 1),
  ),
  RowData2(
    date: "Set 10, 2023 - 16:30 PM",
    hospital: "Florida hospital",
    value: "New",
    backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    textColor: const Color.fromRGBO(0, 0, 0, 1),
  ),
];
