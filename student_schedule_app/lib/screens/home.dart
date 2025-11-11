import 'package:flutter/material.dart';
import '../data/exam_data_model.dart';
import 'details.dart';
import 'package:intl/intl.dart';


void main() => runApp(const ExamScheduleApp());

class ExamScheduleApp extends StatelessWidget {
  const ExamScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Schedule',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ExamScheduleScreen(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}

class ExamScheduleScreen extends StatefulWidget {
  const ExamScheduleScreen({super.key});

  @override
  State<ExamScheduleScreen> createState() => _ExamScheduleScreenState();
}

class _ExamScheduleScreenState extends State<ExamScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.book, color: Colors.black),
        title: const Text(
          'РАСПОРЕД ЗА ИСПИТИ - 223311',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.pink.shade900,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          final formattedDate =
          DateFormat('dd MMM yyyy, HH:mm').format(exam.dateTime);

          return Card(
            color: Colors.white,
            elevation: 10,
            shadowColor: Colors.pink,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.star_outline, color: Colors.pink),
              title: Text(
                exam.subjectName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
              trailing:
              const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: exam,
                );
              },
            ),
          );
        },
      ),
      backgroundColor: Colors.pink.shade900,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'TOTAL EXAMS: ${exams.length}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
