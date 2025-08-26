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
        break;
      case 2:
        int total = 0;
        for (var expense in expenses) {
          total += expense['paid'] as int;
        }
        print('Total paid: $total');
        break;
      default:
        print('Invalid input');
    }
  }
}
