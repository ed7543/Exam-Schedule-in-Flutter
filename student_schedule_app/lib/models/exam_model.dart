class Exam {
  String subjectName;
  DateTime dateTime;
  List<String> laboratories;

  Exam({
    required this.subjectName,
    required this.dateTime,
    required this.laboratories,
});

  Exam.fromJson(Map<String, dynamic> data)
    : subjectName = data['subjectName'][0].toUpperCase() + data['subjectName'].substring(1),
      dateTime = DateTime.parse(data['dateTime']),
      laboratories = List<String>.from(data['laboratories']);

  Map<String, dynamic> toJson() => {
    'subjectName' : subjectName,
    'dateTime' : dateTime.toIso8601String(),
    'laboratories' : laboratories,
  };

}