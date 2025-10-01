// void main() {
//   // 1. Create a Set
//   Set<int> numbers = {10, 20, 30, 40, 50};
//   print("Original Set: $numbers");
//
//   // 2. Add elements
//   numbers.add(60);
//   numbers.add(20); // duplicate (ignored)
//   print("After add: $numbers");
//
//   // 3. Add multiple
//   numbers.addAll({70, 80, 30}); // 30 duplicate, will be ignored
//   print("After addAll: $numbers");
//
//   // 4. Remove elements
//   numbers.remove(10);
//   print("After remove(10): $numbers");
//
//   // 5. RemoveWhere (condition)
//   numbers.removeWhere((n) => n > 60);
//   print("After removeWhere (>60): $numbers");
//
//   // 6. Access - convert to list (since no index in set)
//   print("First element: ${numbers.first}");
//   print("Last element: ${numbers.last}");
//   print("Element at index 1: ${numbers.elementAt(1)}");
//
//   // 7. Iteration
//   numbers.forEach((n) => print("Value: $n"));
//
//   // 8. Contains
//   print("Contains 30? ${numbers.contains(30)}");
//
//   // 9. Length
//   print("Length: ${numbers.length}");
//
//   // 10. Union (combine sets, unique values only)
//   Set<int> a = {1, 2, 3};
//   Set<int> b = {3, 4, 5};
//   print("Union: ${a.union(b)}"); // {1, 2, 3, 4, 5}
//
//   // 11. Intersection (common elements)
//   print("Intersection: ${a.intersection(b)}"); // {3}
//
//   // 12. Difference
//   print("Difference (a-b): ${a.difference(b)}"); // {1, 2}
//
//   // 13. toList (convert Set → List)
//   List<int> numList = numbers.toList();
//   print("Converted to List: $numList");
//
//   // 14. Clear
//   numbers.clear();
//   print("After clear: $numbers");
// }
//
void main() {
  try {
    List<dynamic>? list1 = [null,null];
    List<int> list2 = [10, 20];


    List<dynamic> combined = [...?list1, ...list2];

    print(list1[0].runtimeType); // 10 , 20
    print(combined.runtimeType);
    
  } catch (e) {
    print(e);
  }
}
