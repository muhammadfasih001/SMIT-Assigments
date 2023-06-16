import 'dart:math';

void main() {
  //Assignment 01

  //Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.ie: if both values are equal then it's square otherwise rectangle.

  int lenght = 11;
  int breadth = 10;

  if (lenght == breadth) {
    print("Its a Square");
  } else {
    print("Its a rectangular");
  }

  //Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.
  int age1 = 18;
  int age2 = 38;

  if (age1 > age2) {
    print("Age 1 is the Oldest");
  } else if (age1 < age2) {
    print("Age 2 is the Youngst");
  } else {
    print("Age1 and Age2 are same");
  }

  //Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value: Number of classes held = 16, Number of classes attended = 10, and print percentage of class attended. Is student is allowed to sit in exam or not?

  int numberOfClassesHeld = 20;
  int numberOfClassesAttended = 18;

  double PercentageOfClassAttended =
      (numberOfClassesAttended / numberOfClassesHeld) * 100;

  print("Attendance Percentage: $PercentageOfClassAttended");

  if (PercentageOfClassAttended >= 75) {
    print("Student is allowed to sit in exam.");
  } else {
    print("Student is not allowed to sit in exam.");
  }

  //Q.4: Create integer variable assign any year to it and check if a year is leap year or not. If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400. i.e: Use % ( modulus ) operator.

  int year = 2020;

  int leapYear = year % 4;
  int notLeapYear = year % 400;

  if (leapYear == 0) {
    print("$year is a Leap year");
  } else {
    notLeapYear != 0;
    print("$year is not a Leap year");
  }

  //Q.5: Write a program to read temperature in centigrade and display a suitable message according to temperature: You have num variable temperature = 42; Now print the message according to temperature:temp < 0 then Freezing weather temp 0-10 then Very Cold weather temp 10-20 then Cold weather temp 20-30 then Normal in Temptemp 30-40 then Its Hottemp >=40 then Its Very Hot.

  num temperature = 41;

  if (temperature < 0) {
    print("Freezing weather");
  } else if (temperature >= 0 && temperature <= 10) {
    print("Very cold weather");
  } else if (temperature >= 10 && temperature <= 20) {
    print("Cold weather");
  } else if (temperature >= 20 && temperature <= 30) {
    print("Normal in Temperature");
  } else if (temperature >= 30 && temperature <= 40) {
    print("It's Hot");
  } else {
    temperature >= 40;
    print("It's very Hot");
  }

  //Q.6: Write a program to check whether an alphabet is a vowel or consonant.

  String inputAlphabet = 'a';

  if (inputAlphabet == 'a' ||
      inputAlphabet == 'e' ||
      inputAlphabet == 'i' ||
      inputAlphabet == 'o' ||
      inputAlphabet == 'u') {
    print('$inputAlphabet is a vowel');
  } else {
    print('$inputAlphabet is a consonant');
  }

  //Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

  int customerId = 1009;
  String customerName = "Muhammad Fasih";
  int unitConsumed = 180;
  double perChargUnit;
  double billAmount;

  if (unitConsumed <= 199) {
    perChargUnit = 1.20;
    print("Customer Id NO: $customerId \n" +
        "Customer Name: $customerName" +
        "Units Consumed: $unitConsumed");
  } else if (unitConsumed >= 200 && unitConsumed < 400) {
    perChargUnit = 1.50;
    print("Customer Id NO: $customerId \n" +
        "Customer Name: $customerName" +
        "Units Consumed: $unitConsumed");
  } else if (unitConsumed >= 400 && unitConsumed < 600) {
    perChargUnit = 1.80;
    print("Customer Id NO: $customerId \n" +
        "Customer Name: $customerName" +
        "Units Consumed: $unitConsumed");
  } else {
    perChargUnit = 2.00;
  }

  billAmount = unitConsumed * perChargUnit;

  print("Amount Charges @Rs. $perChargUnit per unit: $billAmount \n" +
      "Net Bill Amount: $billAmount");

  //Q.8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.

  String studentName = "Muhammad Fasih";
  int studentRollNumber = 109;
  int studentClass = 10;
  num subject1Science = 70;
  num subject2Math = 80;
  num subject3English = 80;
  num subject4Urdu = 95;
  num subject5Chemistry = 91;
  num obtainedMark = 500;
  String grade;

  num totalMarks = subject1Science +
      subject2Math +
      subject3English +
      subject4Urdu +
      subject5Chemistry;

  num percentage = (totalMarks / obtainedMark) * 100;
  percentage = double.parse(percentage.toStringAsFixed(2));

  if (percentage >= 80) {
    grade = "A+";
    print("Student Name: $studentName \n" +
        "Student Roll Number: $studentRollNumber \n" +
        "Student Class: $studentClass \n" +
        "Science Marks: $subject1Science \n" +
        "Math Marks: $subject2Math \n" +
        "English Marks $subject3English \n" +
        "Urdu Marks: $subject4Urdu \n" +
        "Chemistry Marks: $subject5Chemistry \n" +
        "Grade: $grade \n" +
        "Obtained Mark: $obtainedMark \n" +
        "Percentage: $percentage \n" +
        "Performance: Exellent");
  } else if (percentage >= 70) {
    grade = "A";
    print("Student Name: $studentName \n" +
        "Student Roll Number: $studentRollNumber \n" +
        "Student Class: $studentClass \n" +
        "Science Marks: $subject1Science \n" +
        "Math Marks: $subject2Math \n" +
        "English Marks $subject3English \n" +
        "Urdu Marks: $subject4Urdu \n" +
        "Chemistry Marks: $subject5Chemistry \n" +
        "Grade: $grade \n" +
        "Obtained Mark: $obtainedMark \n" +
        "Percentage: $percentage \n" +
        "Performance: Superb");
  } else if (percentage >= 60) {
    grade = "B";
    print("Student Name: $studentName \n" +
        "Student Roll Number: $studentRollNumber \n" +
        "Student Class: $studentClass \n" +
        "Science Marks: $subject1Science \n" +
        "Math Marks: $subject2Math \n" +
        "English Marks $subject3English \n" +
        "Urdu Marks: $subject4Urdu \n" +
        "Chemistry Marks: $subject5Chemistry \n" +
        "Grade: $grade \n" +
        "Obtained Mark: $obtainedMark \n" +
        "Percentage: $percentage \n" +
        "Performance: Good");
  } else if (percentage >= 50) {
    grade = "C";
    print("Student Name: $studentName \n" +
        "Student Roll Number: $studentRollNumber \n" +
        "Student Class: $studentClass \n" +
        "Science Marks: $subject1Science \n" +
        "Math Marks: $subject2Math \n" +
        "English Marks $subject3English \n" +
        "Urdu Marks: $subject4Urdu \n" +
        "Chemistry Marks: $subject5Chemistry \n" +
        "Grade: $grade \n" +
        "Obtained Mark: $obtainedMark \n" +
        "Percentage: $percentage \n" +
        "Performance: Need Hard Working");
  } else {
    grade = "D";
    print("Student Name: $studentName \n" +
        "Student Roll Number: $studentRollNumber \n" +
        "Student Class: $studentClass \n" +
        "Science Marks: $subject1Science \n" +
        "Math Marks: $subject2Math \n" +
        "English Marks $subject3English \n" +
        "Urdu Marks: $subject4Urdu \n" +
        "Chemistry Marks: $subject5Chemistry \n" +
        "Grade: $grade \n" +
        "Obtained Mark: $obtainedMark \n" +
        "Percentage: $percentage \n" +
        "Performance: Fail");
  }

  //Q.9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

  int number = 55;

  if (number % 2 == 0 && number % 5 == 0) {
    print("$number is an even number and divisible by 5");
  } else if (number % 2 == 0) {
    print("$number is an even number but not divisible by 5");
  } else if (number % 7 == 0) {
    print("$number is an odd number and divisible by 7");
  } else {
    print("$number is an odd number but not divisible by 7");
  }

  //Q.10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.

  int num1 = 1;
  int num2 = 456;
  int num3 = 5;
  int greatestNum;
  int lowestNum;

  if (num1 > num2 && num1 > num3) {
    greatestNum = num1;
    print("The greatest number is $greatestNum");
  } else if (num2 > num1 && num2 > num3) {
    greatestNum = num2;
    print("The greatest number is $greatestNum");
  } else {
    greatestNum = num3;
    print("largest number is $greatestNum");
  }

  if (num1 < num2 && num1 < num3) {
    lowestNum = num1;
    print("The lowest number is $lowestNum");
  } else if (num2 < num1 && num2 < num3) {
    lowestNum = num2;
    print("The lowest number is $lowestNum");
  } else {
    lowestNum = num3;
    print("The lowest number is $lowestNum");
  }

  //Q.11: Write a program to calculate root of any number.
// i.e: √y = y½

  int SquarCalculateNum = 156;
  print("Square root of ${SquarCalculateNum} is ${sqrt(SquarCalculateNum)}");

  //Q.12 Write a program to convert Celsius  to Fahrenheit   .
//i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32.

  double celcius = 40;

  double farhenheit = (celcius * 9 / 5) + 32;

  print("$celcius(°F) in Celcius is $farhenheit(°C) Farhenheit");
}
