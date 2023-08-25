import 'dart:io';

void main() {
  task1();
}

task1() {
  try {
    print("enter dividend: ");
    int dividend = int.parse(stdin.readLineSync()!);
    print("enter divisor: ");
    int divisor = int.parse(stdin.readLineSync()!);
    print("$dividend / $divisor = ${dividend ~/ divisor}");
  } on IntegerDivisionByZeroException {
    print("You can't divide by 0");
  } catch (e) {}
}

task2() {
  try {
    print("Enter the number of minutes: ");
    int minutes = int.parse(stdin.readLineSync()!);
    print("${minutes ~/ 60} hours and ${minutes % 60} minutes");
  } on FormatException {
    print("Wrong data type");
  } catch (e) {
    print("Error = $e");
  }
}

task3() {
  try {
    print("Enter your age: ");
    int age = int.parse(stdin.readLineSync()!);
    print("Your age: $age");
  } on FormatException {
    print("Wrong data type");
  } catch (e) {
    print("Error = $e");
  }
}
