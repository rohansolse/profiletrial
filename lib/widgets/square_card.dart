import 'package:flutter/material.dart';

class RoundedTile extends StatelessWidget {
  final String title;
  final String viewMoreText;

  const RoundedTile({
    super.key,
    required this.title,
    required this.viewMoreText,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Set the elevation value as desired
      borderRadius: BorderRadius.circular(12.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white, // You can set the background color
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 15,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Text(
                  viewMoreText,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
