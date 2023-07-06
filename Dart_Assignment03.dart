// ignore_for_file: dead_code

import 'dart:io';

void main() {
  //Q.1 Write a program that takes a list of numbers as input and prints the even numbers in the list using a for loop.
// Example:
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output: 2 4 6 8 10

  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNum = [];

  for (int a = 0; a < number.length; a++) {
    if (number[a] % 2 == 0) {
      evenNum.add(number[a]);
    }
  }

  print("Input Numbers: $number");
  print("Even Number List: $evenNum");

  //Q.2 Write a program that prints the Fibonacci sequence up to a given number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8

  int inputNumber = 10;

  int first = 0;
  int second = 1;

  print("Fibonacci sequence: $inputNumber");
  print(first);
  print(second);

  for (int i = 2; i < 7; i++) {
    int nextValue = first + second;
    print(nextValue);

    first = second;
    second = nextValue;
  }

  //Q.3 Implement a code that checks whether a given number is prime or not.
// Example:
// Input: 17
// Output: 17 is a prime number.

  int inputNum = 4;
  List factor = [];

  for (int a = 1; a <= 97; a++) {
    if (inputNum % a == 0) {
      factor.add(a);
    }
  }

  print(factor);

  if (factor.length <= 2) {
    print("$inputNum is a prime number");
  } else {
    print("$inputNum is not a prime number ");
  }

  //Q.4 Implement a code that finds the factorial of a number using a while
// loop or for loop.
// Example:
// Input: 5
// Output: Factorial of 5 is 120

//Use for/range loop.
  int n = 5;
  int fac = 1;

  for (int i = 1; i <= n; i++) {
    fac = fac * i;
  }
  print("Factorial of $n is: $fac");

//Use while loop.
  int i = 1;
  int num = 5;
  int fact = 1;

  while (i <= num) {
    fact = fact * i;
    i++;
  }

  print("Factorial of $num is: $fact");

  //Q.5 Write a program that calculates the sum of all the digits in a given
// number using a while loop.
// Example:
// Input: 12345
// Output: Sum of digits: 15

  List<int> digit = [1, 2, 3, 4, 5];
  int sum = 0;
  int a = 0;

  while (a < digit.length) {
    sum = sum + digit[a];
    a++;
  }

  print("Sum of digit: $sum");

  //Q.6 Implement a code that finds the largest element in a list using a for loop.
// Example:
// Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output: Largest element: 9

  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int maximumElement = 0;

  for (int a = 0; a < numbers.length; a++) {
    if (numbers[a] > maximumElement) {
      maximumElement = numbers[a];
    }
  }
  print("Largest element is: $maximumElement");

  //Q.7 Write a program that prints the multiplication table of a given number using a for loop.
// Example:
// Input: 5
// Output:
// 5 x 1 = 5
// 5 x 2 = 10
// 5 x 3 = 15
// ...
// 5 x 10 = 50

  int tableNum = 5;

  for (int a = 1; a <= 10; a++) {
    print("$tableNum X $a = ${tableNum * a}");
  }

  //Q.8 Implement a function that checks if a given string is a palindrome.
//   Example:
// Input: "radar"
// Output: "radar" is a palindrome.

  String word = "fasih";

  String reversString = word.split("").reversed.join("");

  if (word == reversString) {
    print("$word is a palindrome");
  } else {
    print("$word is not a palindrome");
  }

  //Q. 9 Write a program to display the cube of the number up to an integer.
// Test Data :
// Input number of terms : 5
// Expected Output :
// Number is : 1 and cube of the 1 is :1
// Number is : 2 and cube of the 2 is :8
// Number is : 3 and cube of the 3 is :27
// Number is : 4 and cube of the 4 is :64
// Number is : 5 and cube of the 5 is :125

  int numberInt = 5;
  int cube;

  for (int i = 1; i <= numberInt; i++) {
    cube = i * i * i;
    print("Number is : $i and root of the $i is :$cube");
  }

  //Q. 10 Write a program to display a pattern like a right angle triangle using an asterisk using loop.
// The pattern like :
// *
// **
// ***
// ****

  int rows = 4;

  for (int a = 1; a <= rows; a++) {
    for (int j = 1; j <= a; j++) {
      stdout.write("*");
    }
    print("");
  }

  //Q. 11 Write a program to display a pattern like a right angle triangle with a number using loop.
// The pattern like :
// 1
// 12
// 123
// 1234

  for (int a = 1; a <= 4; a++) {
    for (int j = 1; j <= a; j++) {
      stdout.write(j);
    }
    print("");
  }

  //Q. 12 Write a program to make such a pattern like a right angle triangle with a number which will repeat a number in a row.
// The pattern like :
// 1
// 22
// 333
// 4444

  for (int a = 1; a <= 4; a++) {
    for (int j = 1; j <= a; j++) {
      stdout.write(a);
    }
    print(" ");
  }

  //Q. 13 Write a program to make such a pattern like a right angle triangle with the number increased by 1 using loop..
// The pattern like :
// 1
// 2 3
// 4 5 6
// 7 8 9 10

  int count1 = 0;

  for (int a = 1; a <= 4; a++) {
    for (int j = 1; j <= a; j++) {
      count1++;
      stdout.write(count1.toString() + " ");
    }
    print(" ");
  }

  //Q. 14 Write a program to make a pyramid pattern with numbers increased by 1.
//    1
//   2 3
//  4 5 6
// 7 8 9 10

  int count2 = 0;

  for (int a = 1; a <= 4; a++) {
    for (int j = 4; j > a; j--) {
      stdout.write(" ");
    }
    for (int k = 1; k <= a; k++) {
      count2++;
      stdout.write(count2.toString() + " ");
    }
    print(" ");
  }

  //Q. 15 Write a program to make such a pattern as a pyramid with an asterisk.
  //    *
  //   * *
  //  * * *
  // * * * *

  for (int a = 1; a <= 4; a++) {
    for (int j = 4; j > a; j--) {
      stdout.write(" ");
    }
    for (int k = 1; k <= a; k++) {
      stdout.write("*" + " ");
    }
    print(" ");
  }

  /*Q 16 Write a program that asks the user for their email and password. If the email and password match a predefined set of credentials, print "User login successful." Otherwise, keep asking for the email and password until the correct credentials are provided.*/

  String email = "muhammadfasih006@gmail.com";
  String password = "12345";
  bool logIn = false;

  stdout.write("Enter your email: ");
  String? enterEmail = stdin.readLineSync();

  stdout.write("Enter your password");
  String? enterPassword = stdin.readLineSync();

  if (enterEmail == email && enterPassword == password) {
    logIn = true;
    print("User log in Successful.");
  }

  while (!logIn) {
    print("Invalid credential. Please try again.");
    stdout.write("Enter your email: ");
    enterEmail = stdin.readLineSync();

    stdout.write("Enter your password");
    enterPassword = stdin.readLineSync();

    if (enterEmail == email && enterPassword == password) {
      logIn = true;
    }
  }

  /* Q. 17 Write a program that asks the user for their email and password. You
are given a list of predefined user credentials (email and password
combinations). If the entered email and password match any of the
credentials in the list, print "User login successful." Otherwise, keep
asking for the email and password until the correct credentials are
provided.*/

  List<Map<String, String>> userCredentials = [
    {"email": "muhammadfasih@gmail.com", "password": "12345"},
    {"email": "saif12345@gmail.com", "password": "54321"},
    {"email": "muhammadrohan125@gmail.com", "password": "012354"}
  ];

  bool logedIn = false;

  while (!logedIn) {
    stdout.write("Enter your email: ");
    String? emailEnter = stdin.readLineSync();

    stdout.write("Enter your password: ");
    String? passwordEnter = stdin.readLineSync();

    for (var credential in userCredentials) {
      if (emailEnter == credential["email"] &&
          passwordEnter == credential["password"]) {
        logedIn = true;
        print("user log in successful.");
        break;
      }
    }
    if (!logedIn) {
      print("Invalid credential. Please try again.");
    }
  }

  //Q. 18 Write a program that takes a list of numbers as input and prints the numbers greater than 5 using a for loop and if-else condition.

  List<int> listOfNumber = [2, 5, 4, 7, 9, 6, 10, 55];
  int b = 5;

  for (int number in listOfNumber) {
    if (number > b) {
      print(number);
    }
  }

  //Q. 19 Write a program that counts the number of vowels in a given string using a for loop and if-else condition.

  String inputChar = "fasih";
  int vowelCount = 0;
  String lowerCaseInputChar = inputChar.toLowerCase();

  for (int a = 0; a < lowerCaseInputChar.length; a++) {
    if (lowerCaseInputChar[a] == "a" ||
        lowerCaseInputChar[a] == "e" ||
        lowerCaseInputChar[a] == "i" ||
        lowerCaseInputChar[a] == "o" ||
        lowerCaseInputChar == "u") {
      vowelCount = vowelCount + 1;
    }
  }

  print("The numbers of vowels is: $vowelCount");

  //Q. 20 Implement a code that finds the maximum and minimum elements in a list using a for loop and if-else condition.

  List<int> numbering = [5, 8, 10, 2, 55, 4, 6, 3];
  int maximum = number[0];
  int minimum = numbers[0];

  for (int a = 1; a < numbering.length; a++) {
    if (numbering[a] > maximum) {
      maximum = numbering[a];
    } else if (numbering[a] < minimum) {
      minimum = numbering[a];
    }
  }

  print("Maximum number is $maximum");
  print("Minimum number is $minimum");

  //Q. 21 Write a program that calculates the sum of the squares of all odd numbers in a given list using a for loop and if-else condition.

  List<int> oddNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int sumOfSquare = 0;

  for (int a = 0; a < oddNumber.length; a++) {
    int number = oddNumber[a];

    if (number % 2 != 0) {
      sumOfSquare = sumOfSquare + (number * number);
    }
  }

  print("Sum of square od Odd numbers: $sumOfSquare");

  //Q. 22 Write a program that takes a list of student details as input, where each student is represented by a map containing their name, marks, section, and roll number. The program should determine the grade of each student based on their average score (assuming maximum marks for each subject is 100) and print the student's name along with their grade.
//   List<Map<String, dynamic>> studentDetails = [
// {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
// {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
// {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
// ];

//   List<Map<String, dynamic>> studentDetails = [
//     {
//       'name': 'muhammad fasih',
//       'marks': [80, 75, 90],
//       'section': 'A',
//       'rollNumber': 109
//     },
//     {
//       'name': 'saif ur rehman',
//       'marks': [95, 92, 88],
//       'section': 'B',
//       'rollNumber': 102
//     },
//     {
//       'name': 'muhammad rohan',
//       'marks': [70, 65, 75],
//       'section': 'A',
//       'rollNumber': 105
//     },
//   ];

//   for (var student in studentDetails) {
//     String name = student['name'];
//     List<int> marks = student['marks'];
//     double average = marks.reduce((a, b) => a + b) / marks.length;
//     String grade = calculateGrade(average);

//     print('Name: $name');
//     print('Grade: $grade');
//     print('');
//   }
// }

// String calculateGrade(double average) {
//   if (average >= 90) {
//     return 'A';
//   } else if (average >= 80) {
//     return 'B';
//   } else if (average >= 70) {
//     return 'C';
//   } else if (average >= 60) {
//     return 'D';
//   } else {
//     return 'F';
//   }

  //Q. 23 Implement a code that finds the average of all the negative numbers in a list using a for loop and if-else condition.

  List<int> numbersing = [5, -2, -10, 3, -8, 0, -4];
  int sums = 0;
  int count = 0;

  for (var number in numbersing) {
    if (number < 0) {
      sums = sums + number;
      count++;
    }
  }

  double average = 0;

  if (count > 0) {
    average = sums / count;
  }

  print('List: $numbersing');
  print('Average of negative numbers: $average');

  //Q. 24 Write a program that takes a list of integers as input and returns a new list containing only the prime numbers from the original list. Implement the solution using a for loop and logical operations.
// Input: [4, 7, 10, 13, 16, 19, 22, 25, 28, 31]
// Output: [7, 13, 19, 31].

  List<int> numberse = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> primeNumbers = [];

  for (int number in numberse) {
    bool isPrime = true;

    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      primeNumbers.add(number);
    }
  }

  print("Input: $numberse");
  print("Output: $primeNumbers");
}
