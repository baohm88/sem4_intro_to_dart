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

  @override
  String toString() {
    return 'ID: $id | Name: $name | Avg Score: ${averageScore.toStringAsFixed(2)} | Rank: $rank';
  }
}
