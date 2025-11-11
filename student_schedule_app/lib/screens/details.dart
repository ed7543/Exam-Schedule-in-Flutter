import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;
    final formattedDate =
    DateFormat('dd MMM yyyy, HH:mm').format(exam.dateTime);

    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text("Распоред за испити - 223311"),
        backgroundColor: Colors.pink.shade900,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              exam.subjectName,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(2, 2),
                    color: Colors.pink,
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Icon(Icons.bookmark_added, color: Colors.white),
                const SizedBox(width: 30),
                Text(
                  formattedDate,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.white),
                const SizedBox(width: 30),
                Expanded(
                  child: Text(
                    exam.laboratories.join(', '),
                    style: const TextStyle(fontSize: 20, color: Colors.white),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
