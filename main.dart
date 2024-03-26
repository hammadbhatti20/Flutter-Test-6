//Q1
// void main() {
//   List<String> names = [
//     'Alice',
//     'Bob',
//     'Charlie',
//     'David',
//     'Emma',
//     'Frank',
//     'Grace',
//     'Hannah',
//     'Ian',
//     'Julia'
//   ];

//   // Printing all names in the list
//   print('List of Names:');
//   for (String name in names) {
//     print(name);
//   }
// }

//Q2
// void main() {
//   List<String> days = [];

//   // Adding names of 7 days using the add method
//   days.add('Monday');
//   days.add('Tuesday');
//   days.add('Wednesday');
//   days.add('Thursday');
//   days.add('Friday');
//   days.add('Saturday');
//   days.add('Sunday');

//   // Printing all days in the list
//   print('List of Days:');
//   for (String day in days) {
//     print(day);
//   }
// }

//Q3
// void main() {
//   List<String> days = [
//     'Monday',
//     'Tuesday',
//     'Wednesday',
//     'Thursday',
//     'Friday',
//     'Saturday',
//     'Sunday'
//   ];

//   print('Original list of days: $days');

//   // Removing one by one from the end of the list
//   while (days.isNotEmpty) {
//     String removedDay = days.removeLast();
//     print('Removed day: $removedDay');
//     print('Updated list of days: $days');
//   }
// }

//Q4
// void main() {
//   List<int> numbers = [10, 5, 8, 20, 15, 3, 12]; // Example list of numbers

//   // Find the smallest number
//   int smallest = numbers[0]; // Assume the first number is the smallest
//   for (int num in numbers) {
//     if (num < smallest) {
//       smallest = num; // Update smallest if a smaller number is found
//     }
//   }

//   // Find the greatest number
//   int greatest = numbers[0]; // Assume the first number is the greatest
//   for (int num in numbers) {
//     if (num > greatest) {
//       greatest = num; // Update greatest if a greater number is found
//     }
//   }

//   print('List of numbers: $numbers');
//   print('Smallest number: $smallest');
//   print('Greatest number: $greatest');
// }

//Q5
// void main() {
//   // Creating a map with 'name' and 'phone' keys
//   Map<String, String> contacts = {
//     'Alice': '1234',
//     'Bob': '56789',
//     'Charlie': '678',
//     'David': '91011',
//     'Emma': '121314'
//   };

//   // Using 'where' to find keys with length 4
//   Iterable<String> keysWithLengthFour = contacts.keys.where((key) => key.length == 4);

//   // Printing keys with length 4
//   print('Keys with length 4:');
//   for (String key in keysWithLengthFour) {
//     print(key);
//   }
// }

//Q6
// void main() {
//   // Creating the world map
//   Map<String, Map<String, Map<String, String>>> world = {
//     'countries': {
//       'USA': {
//         'capitalCity': 'Washington D.C.',
//         'currency': 'US Dollar',
//         'language': 'English',
//       },
//       'Japan': {
//         'capitalCity': 'Tokyo',
//         'currency': 'Japanese Yen',
//         'language': 'Japanese',
//       },
//       'France': {
//         'capitalCity': 'Paris',
//         'currency': 'Euro',
//         'language': 'French',
//       },
//       'India': {
//         'capitalCity': 'New Delhi',
//         'currency': 'Indian Rupee',
//         'language': 'Hindi',
//       },
//     }
//   };

//   // Print capital city and currency of a country
//   String countryKey = 'USA'; // Change this to print details of another country
//   if (world.containsKey('countries') && world['countries'].containsKey(countryKey)) {
//     Map<String, String> countryDetails = world['countries'][countryKey];
//     print('Country: $countryKey');
//     print('Capital City: ${countryDetails['capitalCity']}');
//     print('Currency: ${countryDetails['currency']}');
//   } else {
//     print('Country $countryKey not found in the world map.');
//   }
// }

//Q7
// void main() {
//   Map<String, double> expenses = {
//     'sun': 3000.0,
//     'mon': 3000.0,
//     'tue': 3234.0,
//   };

//   String day = 'fri';
//   double newValue = 5000.0;

//   // Check if "fri" exists in expenses
//   if (expenses.containsKey(day)) {
//     // If "fri" exists, update its value
//     expenses[day] = newValue;
//   } else {
//     // If "fri" doesn't exist, add it to expenses with the new value
//     expenses[day] = newValue;
//   }

//   // Print updated expenses
//   print('Updated expenses: $expenses');
// }

//Q8
// void main() {
//   List<Map<String, bool>> usersEligibility = [
//     {'name': 'John', 'eligible': true},
//     {'name': 'Alice', 'eligible': false},
//     {'name': 'Mike', 'eligible': true},
//     {'name': 'Sarah', 'eligible': true},
//     {'name': 'Tom', 'eligible': false},
//   ];

//   // Remove elements with 'eligible' value as false
//   usersEligibility.removeWhere((user) => user['eligible'] == false);

//   // Print the updated list
//   print('Updated list after removing false values:');
//   print(usersEligibility);
// }

//Q9
// void main() {
//   List<int> numbers = [10, 5, 8, 20, 15, 3, 12]; // Example list of integers

//   // Get the maximum value from the list
//   int maxValue = numbers.reduce((value, element) => value > element ? value : element);

//   print('Maximum value in the list: $maxValue');
// }

//Q10
// List<String> removeDuplicates(List<String> inputList) {
//   // Convert the list to a set to remove duplicates
//   Set<String> uniqueElements = inputList.toSet();
  
//   // Convert the set back to a list to maintain the original order
//   List<String> result = uniqueElements.toList();

//   return result;
// }

// void main() {
//   List<String> originalList = ['apple', 'banana', 'apple', 'orange', 'banana', 'grape'];

//   List<String> newList = removeDuplicates(originalList);

//   print('Original List: $originalList');
//   print('List without duplicates: $newList');
// }

//Q11
// List<T> takeFirstN<T>(List<T> inputList, int n) {
//   if (n >= inputList.length) {
//     return List<T>.from(inputList);
//   } else {
//     return inputList.sublist(0, n);
//   }
// }

// void main() {
//   List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // Example list
//   int n = 5; // Number of elements to take

//   List<int> firstNElements = takeFirstN(originalList, n);

//   print('Original List: $originalList');
//   print('First $n elements: $firstNElements');
// }

//Q12
// void printReverseList(List<String> inputList) {
//   // Iterate through the original list in reverse order and print each element
//   for (int i = inputList.length - 1; i >= 0; i--) {
//     print(inputList[i]);
//   }
// }

// void main() {
//   List<String> originalList = ['apple', 'banana', 'orange', 'grape']; // Example list

//   print('Original List:');
//   for (String element in originalList) {
//     print(element);
//   }

//   print('\nReversed List:');
//   printReverseList(originalList);
// }

//Q13
// List<int> uniqueElements(List<int> inputList) {
//   List<int> uniqueList = [];
  
//   // Iterate through the original list
//   for (int element in inputList) {
//     // Add the element to the new list if it's not already present
//     if (!uniqueList.contains(element)) {
//       uniqueList.add(element);
//     }
//   }
  
//   return uniqueList;
// }

// void main() {
//   List<int> originalList = [1, 2, 3, 4, 2, 3, 5, 6, 1]; // Example list

//   List<int> uniqueList = uniqueElements(originalList);

//   print('Original List: $originalList');
//   print('Unique Elements: $uniqueList');
// }

//Q14
// List<int> sortList(List<int> inputList) {
//   // Create a new list from the original list
//   List<int> sortedList = List.from(inputList);
  
//   // Sort the new list in ascending order
//   sortedList.sort();
  
//   return sortedList;
// }

// void main() {
//   List<int> originalList = [3, 1, 5, 2, 4]; // Example list

//   List<int> sortedList = sortList(originalList);

//   print('Original List: $originalList');
//   print('Sorted List: $sortedList');
// }

//Q15
// void main() {
//   List<int> originalList = [3, -1, 5, -2, 4, -6, 0, 7, -9]; // Example list

//   List<int> positiveNumbers = originalList.where((number) => number >= 0).toList();

//   print('Original List: $originalList');
//   print('List with only positive numbers: $positiveNumbers');
// }

//Q16
// void main() {
//   List<int> originalList = [3, 6, 5, 8, 11, 4, 9, 10]; // Example list

//   List<int> evenNumbers = originalList.where((number) => number % 2 == 0).toList();

//   print('Original List: $originalList');
//   print('List with only even numbers: $evenNumbers');
// }

//Q17
// void main() {
//   List<int> originalList = [1, 2, 3, 4, 5]; // Example list

//   List<int> squaredList = originalList.map((number) => number * number).toList();

//   print('Original List: $originalList');
//   print('Squared List: $squaredList');
// }

//Q18
// void main() {
//   Map<String, dynamic> person = {
//     'name': 'John',
//     'age': 25,
//     'isStudent': true,
//   };

//   bool isStudent = person['isStudent'];
//   int age = person['age'];

//   if (isStudent && age > 18) {
//     print('Eligible');
//   } else {
//     print('Not eligible');
//   }
// }

//Q19
// void main() {
//   Map<String, dynamic> product = {
//     'name': 'Laptop',
//     'price': 999.99,
//     'quantity': 5,
//   };

//   int quantity = product['quantity'];

//   if (quantity > 0) {
//     print('In stock');
//   } else {
//     print('Out of stock');
//   }
// }

//Q20
// void main() {
//   Map<String, dynamic> car = {
//     'brand': 'Toyota',
//     'color': 'Red',
//     'isSedan': true,
//   };

//   bool isSedan = car['isSedan'];
//   String color = car['color'];

//   if (isSedan && color.toLowerCase() == 'red') {
//     print('Match');
//   } else {
//     print('No match');
//   }
// }

//Q21
// void main() {
//   Map<String, dynamic> user = {
//     'name': 'John',
//     'isAdmin': true,
//     'isActive': true,
//   };

//   bool isAdmin = user['isAdmin'];
//   bool isActive = user['isActive'];

//   if (isAdmin && isActive) {
//     print('Active admin');
//   } else {
//     print('Not an active admin');
//   }
// }

//Q22
// void main() {
//   Map<String, int> shoppingCart = {
//     'Apple': 2,
//     'Banana': 3,
//     'Orange': 1,
//   };

//   if (shoppingCart.containsKey('Apple')) {
//     print('Product found');
//   } else {
//     print('Product not found');
//   }
// }
