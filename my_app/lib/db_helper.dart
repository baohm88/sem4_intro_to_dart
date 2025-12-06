import 'package:my_app/student.dart';
import 'package:sqlite3/sqlite3.dart';

class DBHelper {
  late final Database db;

  DBHelper() {
    print('Connecting to DB...');
    db = sqlite3.open('student.db');
    _createTable();
  }

  void _createTable() {
    db.execute('''
      CREATE TABLE IF NOT EXISTS students (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        math_score REAL,
        eng_score REAL
      )
    ''');
  }

  List<Student> getAllStudents() {
    final ResultSet resultSet = db.select('SELECT * FROM students');
    return resultSet.map((row) => Student.fromRow(row)).toList();
  }

  void insertStudent(Student sv) {
    final stmt = db.prepare('INSERT INTO students (id, name, math_score, eng_score) VALUES (?, ?, ?, ?)');

    try {
      stmt.execute([sv.id, sv.name, sv.mathScore, sv.engScore]);
      print('✅ Student inserted into DB.');
    } catch (e) {
      print('❌ Error inserting student. ID may already exist.');
    } finally {
      stmt.close();
    }
  }

  bool deleteStudent(String id) {
    final stmt = db.prepare('DELETE FROM students WHERE id = ?');
    stmt.execute([id]);

    final isDeleted = db.updatedRows > 0;
    stmt.close();
    return isDeleted;
  }

  List<Student> searchByName(String keyword) {
    final stmt = db.prepare('SELECT * FROM students WHERE name LIKE ?');

    final ResultSet results = stmt.select(['%$keyword%']);
    final list = results.map((row) => Student.fromRow(row)).toList();

    stmt.close();
    return list;
  }

  void close() {
    db.dispose();
  }
}
