import 'package:sqlite3/sqlite3.dart';

class Student {
  final String id;
  String name;
  double mathScore;
  double engScore;

  Student({required this.id, required this.name, required this.mathScore, required this.engScore});

  double get averageScore => (mathScore + engScore) / 2;

  String get rank {
    if (averageScore >= 8.0) return 'Excellent';
    if (averageScore >= 6.5) return 'Good';
    if (averageScore >= 5.0) return 'Average';
    return 'Weak';
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'math_score': mathScore, 'eng_score': engScore};
  }

  factory Student.fromRow(Row row) {
    return Student(
      id: row['id'] as String,
      name: row['name'] as String,
      mathScore: row['math_score'] as double,
      engScore: row['eng_score'] as double,
    );
  }

  @override
  String toString() {
    return 'ID: $id | Name: $name | Avg Score: ${averageScore.toStringAsFixed(1)} | Rank: $rank';
  }
}
