import 'package:flutter/material.dart';

class RowData {
  final String title;
  final String value;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;
  final String readingDate;

  RowData({
    required this.title,
    required this.value,
    required this.backgroundColor,
    required this.textColor,
    required this.icon,
    required this.readingDate,
  });
}

final cardData = [
  RowData(
    icon: Icons.bloodtype,
    title: 'Blood Pressure',
    value: '120/90 mmhg',
    readingDate: 'Dec 1, 2023 - 12:00',
    backgroundColor: const Color.fromRGBO(232, 250, 246, 0.5),
    textColor: const Color.fromRGBO(0, 178, 136, 1),
  ),
  RowData(
    icon: Icons.thermostat,
    title: 'Body Temperature',
    value: '100 F',
    readingDate: 'Dec 4, 2023 - 12:00',
    backgroundColor: const Color.fromRGBO(255, 241, 241, 0.5),
    textColor: const Color.fromRGBO(234, 99, 99, 1),
  ),
  RowData(
    icon: Icons.heart_broken_outlined,
    title: 'Heart Rate ',
    value: '120/90 mmhg',
    readingDate: 'Dec 2, 2023 - 12:30',
    backgroundColor: const Color.fromRGBO(232, 250, 246, 0.5),
    textColor: const Color.fromRGBO(0, 178, 136, 1),
  ),
  RowData(
    icon: Icons.bloodtype_outlined,
    title: 'Blood Glucose',
    value: '200mg/dl',
    readingDate: 'Dec 3, 2023 - 13:00',
    backgroundColor: const Color.fromRGBO(232, 250, 246, 0.5),
    textColor: const Color.fromRGBO(0, 178, 136, 1),
  ),
  RowData(
    icon: Icons.bloodtype,
    title: 'Respiration Rate',
    value: '40 beats/min',
    readingDate: 'Dec 5, 2023 - 14:00',
    backgroundColor: const Color.fromRGBO(255, 241, 241, 0.5),
    textColor: const Color.fromRGBO(234, 99, 99, 1),
  ),
];
