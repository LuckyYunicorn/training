// // void main() {
// //   List<int> numbers = [1, 2, 3, 4];
// //
// //   // Har number ko double karna
// //   var doubled = numbers.map((n) => n * 2).toList();
// //
// //   print(doubled); // [2, 4, 6, 8]
// // }
//
// // void main() {
// //   List<Map<String, dynamic>> users = [
// //     {'id': 1, 'name': "Lucky", 'age': 22},
// //     {'id': 2, 'name': "Kuldeep", 'age': 25},
// //     {'id': 3, 'name': "Aman", 'age': 28},
// //     {'id': 4, 'name': "Rohit", 'age': 21},
// //     {'id': 5, 'name': "Arun", 'age': 24},
// //   ];
// //
// //   // var updatedUser = users.where((e)=> e['name'].startsWith("A")).toList();
// //   Map<String, dynamic> user = {
// //     'id': 1, 'name': "Lucky", 'age': 22,
// //   };
// //   print(user.keys.runtimeType);
// //
// // }
void main() {
  // Create a List
  List<int> numbers = [10, 20, 30, 40, 50];
  print("Original List: $numbers");

  // 1. Access by index
  print("First element: ${numbers[0]}");
  print("Last element: ${numbers[numbers.length - 1]}");

  // 2. Add elements
  numbers.add(60);
  print("After add: $numbers");

  numbers.addAll([70, 999]);
  print("After addAll: $numbers");

  // 3. Insert at index
  numbers.insert(0, 15);
  print("After insert: $numbers");

  // 4. Update element
  numbers[2] = 25;
  print("After update: $numbers");

  // 5. Remove elements
  numbers.remove(25); // removes first matching value
  print("After remove(25): $numbers");

  numbers.removeAt(0); // remove by index
  print("After removeAt(0): $numbers");

  numbers.removeLast(); // remove last element
  print("After removeLast(): $numbers");

  numbers.removeWhere((n) => n > 50); // remove conditionally
  print("After removeWhere (>50): $numbers");

  // 6. Iteration
  numbers.forEach((n) => print("Value: $n"));

  // 7. Map (transform values)
  var doubled = numbers.map((n) => n * 2).toList();
  print("Doubled: $doubled");

  // 8. Where (filter values)
  var filtered = numbers.where((n) => n > 20).toList();
  print("Filtered (>20): $filtered");

  // 9. Reduce (single value)
  var sum = numbers.reduce((a, b) => a*a + b*b);
  print("Sum using reduce: $sum");

  // 10. Fold (reduce with initial value)
  var sumWithFold = numbers.fold(100, (a, b) => a + b);
  print("Sum with initial value 100: $sumWithFold");

  // 11. Any & Every
  print("Any > 30? ${numbers.any((n) => n > 30)}");
  print("Every > 5? ${numbers.every((n) => n > 5)}");

  // 12. Contains
  print("Contains 20? ${numbers.contains(20)}");

  // 13. Sublist
  print("Sublist(0,2): ${numbers.sublist(0, 2)}");

  // 14. Sort
  numbers.sort();
  print("Sorted: $numbers");

  // 15. Reversed
  print("Reversed: ${numbers.reversed.toList()}");

  // 16. Spread operator
  List<int> newList = [0, ...numbers, 100];
  print("With spread: $newList");

  // 17. Collection if
  bool addExtra = true;
  List<int> dynamicList = [1, 2, if (addExtra) 3];
  print("Collection-if: $dynamicList");

  // 18. Collection for
  List<int> multiplied = [for (var n in numbers) n * 10];
  print("Collection-for: $multiplied");

}

//
//
