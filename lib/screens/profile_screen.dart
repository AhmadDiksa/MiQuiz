import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/profile_info.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage("assets/profile.jpg")),
            const SizedBox(height: 10),
            Text("John Doe", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("@johndoe1 Student", style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 20),
            ProfileInfo(title: "Activities", subtitle: "Quiz 2/4 Done", points: "2090"),
            const SizedBox(height: 10),
            ProfileInfo(title: "My Class", subtitle: "2023F", points: ""),
          ],
        ),
      ),
    );
  }
}
