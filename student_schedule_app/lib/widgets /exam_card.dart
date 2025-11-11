import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import 'package:intl/intl.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  final VoidCallback onTap;

  const ExamCard({super.key, required this.exam, required this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isPast = exam.dateTime.isBefore(DateTime.now());
    Color cardColor = isPast ? Colors.grey[300]! : Colors.pinkAccent.shade100!;

    return Card(
      color: cardColor,
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(exam.subjectName),
        onTap: onTap,
      ),
    );
  }
}
