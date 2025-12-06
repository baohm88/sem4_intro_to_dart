import 'dart:io';

import 'package:my_app/db_helper.dart';
import 'package:my_app/student.dart';

void main() {
  final dbHelper = DBHelper();
  while (true) {
    showMenu();
    final choice = readLine('Choose an option (0-4): ');

    switch (choice) {
      case '1':
        showAllStudents(dbHelper);
        break;
      case '2':
        addStudent(dbHelper);
        break;
      case '3':
        removeStudent(dbHelper);
        break;
      case '4':
        findStudent(dbHelper);
        break;
      case '0':
        print('Program exited. Goodbye!');
        dbHelper.close();
        return;
      default:
        print('Invalid option. Please try again.');
    }
  }
}

void showMenu() {
  print('\n================ STUDENT MANAGEMENT SYSTEM ================');
  print('1. View all students');
  print('2. Add a new student');
  print('3. Remove a student by ID');
  print('4. Search students by name');
  print('0. Exit');
}

void showAllStudents(DBHelper dbHelper) {
  print('\n--- STUDENT LIST ---');
  final students = dbHelper.getAllStudents();

  if (students.isEmpty) {
    print('The list is empty.');
  } else {
    for (final sv in students) {
      print(sv);
    }

    int total = students.length;
    if (total == 1) print('Total: $total student.');
    print('Total: $total students');
  }
}

void addStudent(DBHelper dbHelper) {
  print('\n--- ADD NEW STUDENT ---');

  final id = readNonEmpty('Enter ID: ');
  final name = readNonEmpty('Enter Name: ');
  final math = readDouble('Math Score: ');
  final eng = readDouble('English Score: ');

  final newStudent = Student(id: id, name: name, mathScore: math, engScore: eng);

  dbHelper.insertStudent(newStudent);
}

void removeStudent(DBHelper dbHelper) {
  final id = readNonEmpty('\nEnter ID to remove: ');

  final isDeleted = dbHelper.deleteStudent(id);

  if (isDeleted) {
    print('Student with ID $id has been removed.');
  } else {
    print('No student found with ID $id.');
  }
}

void findStudent(DBHelper dbHelper) {
  final keyword = readLine('\nEnter name to search: ');

  final results = dbHelper.searchByName(keyword);

  if (results.isEmpty) {
    print('\nNo students found.');
  } else {
    print('\n--- SEARCH RESULTS ---');
    for (final sv in results) {
      print(sv);
    }
    print('Total: ${results.length} students found');
  }
}

String readLine(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()?.trim() ?? '';
}

String readNonEmpty(String prompt) {
  while (true) {
    final input = readLine(prompt);
    if (input.isNotEmpty) return input;
    print('Input cannot be empty. Please try again.');
  }
}

double readDouble(String prompt) {
  while (true) {
    final input = readLine(prompt);
    final value = double.tryParse(input);
    if (value != null) return value;
    print('Please enter a valid number.');
  }
}
