// bin/my_app.dart

import 'dart:io';

import 'package:my_app/student.dart';

void main() {
  final List<Student> students = [];
  showMenu();
  while (true) {
    final choice = readLine('Enter your choice (0-4): ');

    switch (choice) {
      case '1':
        showAllStudents(students);
        break;
      case '2':
        addStudent(students);
        break;
      case '3':
        removeStudent(students);
        break;
      case '4':
        findStudent(students);
        break;
      case '0':
        print('Exiting program... Bye!');
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

void showAllStudents(List<Student> list) {
  print('\n=== STUDENT LIST ===');
  if (list.isEmpty) {
    print('The list is empty.');
  } else {
    for (var sv in list) {
      print(sv);
    }
    print('Total: ${list.length} students');
  }
}

void addStudent(List<Student> list) {
  print('\n=== ADD NEW STUDENT ===');

  final id = readNonEmpty('Enter ID: ');

  final isExist = list.any((sv) => sv.id == id);
  if (isExist) {
    print('Error: This ID already exists.');
    return;
  }

  final name = readNonEmpty('Enter Name: ');
  final math = readDouble('Math Score: ');
  final eng = readDouble('English Score: ');

  final newSv = Student(id: id, name: name, mathScore: math, engScore: eng);

  list.add(newSv);
  print('Student added successfully!');
}

void removeStudent(List<Student> list) {
  final inputId = readNonEmpty('\nEnter ID to remove: ');

  final oldLength = list.length;
  list.removeWhere((sv) => sv.id == inputId);

  if (list.length < oldLength) {
    print('Student with ID $inputId has been removed.');
  } else {
    print('No student found with ID $inputId.');
  }
}

void findStudent(List<Student> list) {
  final keyword = readLine('\nEnter name to search: ').toLowerCase();

  final results = list.where((sv) => sv.name.toLowerCase().contains(keyword)).toList();

  if (results.isEmpty) {
    print('\nNo students found.');
  } else {
    showAllStudents(results);
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
