class UserData {
  final String avatarImagePath;
  final String name;
  final String dob;
  final String date;
  final String time;
  final String text;

  UserData({
    required this.avatarImagePath,
    required this.name,
    required this.dob,
    required this.date,
    required this.time,
    required this.text,
  });
}

List<UserData> userDataList = [
  UserData(
    avatarImagePath: 'assets/images/avatar1.png',
    name: 'John Doe',
    dob: '1990-01-01',
    date: '2023-12-21',
    time: '12:00 PM',
    text: 'Some Text 1',
  ),
  UserData(
    avatarImagePath: 'assets/images/avatar1.png',
    name: 'Jane Doe',
    dob: '1988-05-15',
    date: '2023-12-22',
    time: '03:30 PM',
    text: 'Some Text 2',
  ),
  UserData(
    avatarImagePath: 'assets/images/avatar1.png',
    name: 'Bob Smith',
    dob: '1995-09-08',
    date: '2023-12-23',
    time: '09:45 AM',
    text: 'Some Text 3',
  ),
  UserData(
    avatarImagePath: 'assets/images/avatar1.png',
    name: 'Alice Johnson',
    dob: '1982-11-30',
    date: '2023-12-24',
    time: '02:15 PM',
    text: 'Some Text 4',
  ),
  UserData(
    avatarImagePath: 'assets/images/avatar1.png',
    name: 'Charlie Brown',
    dob: '1998-03-12',
    date: '2023-12-25',
    time: '05:00 PM',
    text: 'Some Text 5',
  ),
];
