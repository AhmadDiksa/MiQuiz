import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int selectedAnswer = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pemrograman Dasar")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Question 7/10", style: GoogleFonts.poppins(fontSize: 16, color: Colors.orange)),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Apa output yang dihasilkan dari kode ini?"),
            ),
            const SizedBox(height: 20),
            ...["Hello World", "3", "12", "Error"].asMap().entries.map((entry) {
              int idx = entry.key;
              String text = entry.value;
              return ListTile(
                title: Text(text),
                leading: Radio(value: idx, groupValue: selectedAnswer, onChanged: (val) {
                  setState(() => selectedAnswer = val as int);
                }),
              );
            }).toList(),
            Spacer(),
            ElevatedButton(onPressed: () {}, child: Text("Next")),
          ],
        ),
      ),
    );
  }
}
