import 'package:intl/intl.dart';

class Student {
  String id;
  String name;
  DateTime dob;
  double score;

  Student({required this.id, required this.name, required this.dob, this.score = 0.0});

  int get age {
    return DateTime.now().year - dob.year;
  }

  void showInfo() {
    String formattedDate = DateFormat('dd/mm/yyyy').format(dob);
    print('-------------------------');
    print('SV: $name (ID: $id)');
    print('Ngày sinh: $formattedDate (Tuổi: $age)');
    print('Điểm: $score -> Xếp loại: ${_classify()}');
  }

  String _classify() {
    if (score >= 8.0) return 'Excellent';
    if (score >= 5.0) return 'Good';
    return 'Average';
  }
}
