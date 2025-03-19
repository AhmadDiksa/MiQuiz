import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final String points;

  const ProfileInfo({required this.title, required this.subtitle, required this.points});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: points.isNotEmpty ? Text(points, style: TextStyle(fontWeight: FontWeight.bold)) : null,
      ),
    );
  }
}
