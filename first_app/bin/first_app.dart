import 'package:first_app/student.dart';

void main() {
  // 1. Tạo danh sách sinh viên
  List<Student> classroom = [];

  // 2. Thêm sinh viên vào danh sách
  classroom.add(
    Student(
      id: 'SV001',
      name: 'Nguyễn Văn A',
      dateOfBirth: DateTime(2002, 5, 20), // Năm, tháng, ngày
      score: 8.5,
    ),
  );

  classroom.add(Student(id: 'SV002', name: 'Trần Thị B', dateOfBirth: DateTime(2003, 11, 15), score: 6.0));

  // 3. Duyệt danh sách và hiển thị
  print('DANH SÁCH LỚP HỌC:');
  for (var sv in classroom) {
    sv.showInfo();
  }
}
