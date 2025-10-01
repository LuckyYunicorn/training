// void main() {
//   Map<String,List<String>> mapData = {
//     "list":["Lucky", "Kuldeep"],
//   };
//   print(mapData['list']![0]);
// }

void main() {
  // 1. Create a Map
  Map<String, dynamic> user = {
    'id': 1,
    'name': 'Lucky',
    'age': 22,
  };
  print("Original Map: $user");

  // 2. Access values
  print("Name: ${user['name']}");
  print("Age: ${user['age']}");

  // 3. Add new key-value pair
  user['email'] = 'lucky@example.com';
  print("After adding email: $user");

  // 4. Update existing value
  user['age'] = 23;
  print("After updating age: $user");

  // 5. Remove key-value
  user.remove('email');
  print("After remove(email): $user");

  // 6. Keys and Values
  print("Keys: ${user.keys}");
  print("Values: ${user.values}");

  // 7. Iteration
  user.forEach((key, value) {
    print("$key: $value");
  });

  // 8. Map transformation
  var upperCaseKeys = user.map((key, value) => MapEntry(key.toUpperCase(), value));
  print("Keys in uppercase: $upperCaseKeys");

  // 9. Check existence
  print("Contains key 'name'? ${user.containsKey('name')}");
  print("Contains value 23? ${user.containsValue(23)}");

  // 10. Merge two maps
  Map<String, dynamic> extra = {'city': 'Delhi', 'country': 'India'};
  user.addAll(extra);
  print("After addAll: $user");

  // 11. Remove where (based on condition)
  user.removeWhere((key, value) => key.startsWith('c'));
  print("After removeWhere: $user");

  // 12. Length
  print("Length of map: ${user.length}");

  // 13. Clear
  user.clear();
  print("After clear: $user");
}
