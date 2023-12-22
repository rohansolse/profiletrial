import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Profile Card Example'),
//         ),
//         body: ProfileCard(),
//       ),
//     );
//   }
// }

class ProfileCard extends StatelessWidget {
  final String name;
  final String avatarLink;
  final String dob;
  final String age;
  final String gender;
  final String race;
  final String ethnicity;
  final String phone;
  final String email;
  final String address;
  final String insurance;
  const ProfileCard({
    super.key,
    required this.name,
    required this.avatarLink,
    required this.dob,
    required this.age,
    required this.gender,
    required this.race,
    required this.ethnicity,
    required this.phone,
    required this.email,
    required this.address,
    required this.insurance,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(16.0), // Adjust the radius as needed
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        avatarLink,
                      ),
                      radius: 40,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Age: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(age),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'DOB: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(dob),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gender: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(gender),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Race: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(race),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Ethnicity: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(ethnicity),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Phone: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(phone),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Email: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(email),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Address: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(address),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Insurance: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(insurance),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool hasData(String data) {
    return data.isNotEmpty;
  }
}
