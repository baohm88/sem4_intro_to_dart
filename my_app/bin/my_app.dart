import 'package:my_app/student.dart';

void main(List<String> args) {
  List<Student> classroom = [];

  classroom.add(
    Student(id: 'sv001', name: 'Nguyen Van A', dob: DateTime(2002, 5, 20), score: 8.5)
  );
  classroom.add(
    Student(id: 'sv002', name: 'Tran Thi B', dob: DateTime(2003, 5, 30), score: 6.0)
  );

  print("Students list:");
  for (var student in classroom) {
    student.showInfo();
  }

}
