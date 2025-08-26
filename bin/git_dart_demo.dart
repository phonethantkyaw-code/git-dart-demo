import 'dart:io';


void main() {
  List expenses = [
    {"id": 1, "item": "lunch", "paid": 70},
    {"id": 2, "item": "coffee", "paid": 45},
    {"id": 3, "item": "room rent", "paid": 1600},
  ];


  print('===== Expense tracking app ===== ');
  print('1. Show all expenses');
  print('2. Show total paid');
  stdout.write('Enter 1 or 2...');
  // get user input
  int? choice = int.tryParse(stdin.readLineSync()!);
  if (choice == null) {
    print('Invalid input');
  } else {
    switch (choice) {
      case 1:
        // loop to show all expenses
        for (Map expense in expenses) {
          print('${expense["id"]} - ${expense["item"]} - ${expense["paid"]}');
        }
        break;
      case 2:
        break;
      default:
        print('Invalid input');
    }
  }
}
