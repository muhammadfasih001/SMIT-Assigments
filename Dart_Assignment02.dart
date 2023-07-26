void main() {
  //Q.1: Create a list of names and print all names using the List method.

  List names = ["fasih", "saif", "muhammad rohan", "haider ali"];

  print(names);

  // //Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

  List<String> days = [];

  days.addAll([
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ]);

  print(days);

  // // Q.3: Create a list of Days and remove one by one from the end of list.

  List day = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  day.remove("Monday");
  print(day);

  day.remove("Tuesday");
  print(day);

  day.remove("Wednesday");
  print(day);

  day.remove("Thursday");
  print(day);

  day.remove("Friday");
  print(day);

  day.remove("Saturday");
  print(day);

  day.remove("Sunday");
  print(day);

  // // Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List<int> number = [80, 2, 41, 8, 6, 3, 5, 100, 60];

  number.sort();

  print(number);

  int smallestNumber = number.first;
  int greatestNum = number.last;

  print("Numbers List: $number");
  print("Smallest Number is: $smallestNumber");
  print("Greatest Number is: $greatestNum");

  // // Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

  Map<String, String> contactBook = {
    "Fasih": "03092365088",
    "Saif": "03214589568",
    "Rohan": "03452987456",
    "Umer": "03212548758"
  };

  List<String> keysLength4 =
      contactBook.keys.where((key) => key.length == 4).toList();
  print(keysLength4);

  //Q.6:Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.

  Map<String, Map<String, dynamic>> world = {
    "pakistan": {
      "capitalCity": "islamabad",
      "currency": "PKR",
      "language": "urdu",
    },
    "USA": {
      "capitalCity": "washington D.C",
      "currency": "Dollar",
      "language": "english",
    },
    "Afghanistan": {
      "capitalCity": "kabul",
      "currency": "afghani ؋",
      "language": "afghani"
    }
  };

  String country = "pakistan";

  if (world.containsKey(country)) {
    String capitalCity = world[country]!["capitalCity"];
    String currency = world[country]!["currency"];
    print("Capital City of $country: $capitalCity");
    print("Currency of $country: $currency");
  } else {
    print("This key is not available for: $country");
  }

//   Q.7:
// Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };

// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
    // 'fri': 2000.0
  };

  if (expenses.containsKey("fri")) {
    expenses["fri"] = 8500.0;
  } else {
    expenses["fri"] = 8500.0;
  }

  print(expenses);

  //Q.8: remove all false values from below list by using removeWhere or retainWhere property.

// List<Map<String, bool>> usersEligibility = [
// {'name': 'John', 'eligible': true},
// {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true},
// {'name': 'Tom', 'eligible': false},
// ];

  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility
      .removeWhere((usereligibility) => usereligibility["eligible"] == false);
  print(usersEligibility);

  usersEligibility
      .retainWhere((usereligibility) => usereligibility["eligible"] == true);

  //Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

  List<int> numbers = [1, 55, 4, 88, 1000, 3, 12, 700];

  int maximumValue =
      numbers.reduce((value, element) => value > element ? value : element);
  print("The maximum value is $maximumValue");

  //Q.10 Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

  List<String> originalListFruit = [
    'apple',
    'banana',
    'grape',
    'banana',
    'orange',
    'banana'
  ];

  dynamic newListFruit = originalListFruit.toSet().toList();

  print('Original list Fruit: $originalListFruit');
  print('List Fruit without duplicates: $newListFruit');

  //Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.

  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int num = 5;

  List<int> newList = originalList.sublist(0, num);
  print("Original List: $originalList");
  print("Number of element to print: $num");
  print("New list with first $num element: $newList");

  //Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

  List<String> originalListChar = ["a", "b", "c", "d", "e", "f"];

  List<String> ReverseNewListChar = originalListChar.reversed.toList();

  print("Original List of Alphabet is: $originalListChar");
  print("Reverse List of Alphabet is $ReverseNewListChar");

  //Q.13: Implement a code that takes in a list of integers and print a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.

  List<int> originalList1 = [1, 6, 6, 1, 3, 3, 4];
  List<int> uniqueList = [];

  originalList1.forEach((element) {
    if (originalList1.indexOf(element) == originalList1.lastIndexOf(element)) {
      uniqueList.add(element);
    }
  });

  print('Original List: $originalList1');
  print('List with unique elements: $uniqueList');

  //Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.

  List<int> originalNumberList = [9, 8, 7, 6, 5, 4, 3, 2, 1];

  List<int> sortList = List.from(originalNumberList);
  sortList.sort((a, b) => a.compareTo(b));

  print("Original List: $originalNumberList");
  print("Accending Order Sorted list: $sortList");

  //Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List<int> originalLists = [1, -2, 3, -4, 5, -6, 7, -8, 9, 0];

  List<int> positiveNumbers =
      originalLists.where((element) => element >= 0).toList();

  print("Original List: $originalLists");
  print("positive Numbers: $positiveNumbers");

  //Q.16 Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.

  List<int> originalIntList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  List<int> evenNumbers =
      originalIntList.where((element) => element % 2 == 0).toList();

  print("Original List: $originalIntList");
  print("Even Numbers: $evenNumbers");

  //Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.

  List<int> originalsList = [2, 3, 4, 5, 6, 7, 8];

  List<int> squaredList = originalsList.map((e) => e * e).toList();

  print("Original List: $originalsList");
  print("Squared List: $squaredList");

  //Q.18 Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

  Map<String, dynamic> person = {"name": "fasih", "age": 20, "isStudent": true};

  if (person["isStudent"] == true && person["age"] >= 18) {
    print("Elgible");
  } else {
    print("Not eligible");
  }

  //Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

  Map<String, dynamic> product = {
    "name": "Google Pixel 3",
    "price": 24000,
    "quantity": 0
  };

  if (product["quantity"] > 0) {
    print("Product in Stock $product");
  } else {
    print("Out of Stock $product");
  }

  //Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true
  };

  if (car["isSedan"] == true && car["color"] == "Red") {
    print("Match");
  } else {
    print("No match");
  }

  //Q.21 Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".

  Map<String, dynamic> user = {
    "name": "fasih",
    "isAdmin": true,
    "isActive": true
  };

  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("Active Admin");
  } else {
    print("Not an Active Admin");
  }

  //Q.22 Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

  Map<String, int> shoppingCart = {"Addidas": 2, "Nike": 5, "Air": 8};

  if (shoppingCart.containsKey("Air")) {
    print("Product Found");
  } else {
    print("Product not found");
  }
}
