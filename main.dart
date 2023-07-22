import 'dart:io';

List<Map<String, dynamic>> patientList = [];
// List<Map<String, dynamic>> appointment = [];
void main() {
  bool condition = true;

  while (condition == true) {
    print("");
    print("==========Hospital Management System==========");
    print("");
    print("Press Key 1: Add Patient");
    print("Press Key 2: View Patient Records");
    print("Press Key 3: Delete Patient");
    print("Press Key 4: Search Patient");
    print("Press Key 5: Add Patient Appointment Schedule");
    print("Press Key 6: View Pateint Appointment Schedule record");
    print("Press Key 7: Exit");

    print("");

    stdout.write("Enter your Option please: ");
    int option = int.parse(stdin.readLineSync()!);

    print("");

    if (option == 1) {
      addPatient();
    } else if (option == 2) {
      viewPatientRecords();
    } else if (option == 3) {
      deletePatientByID();
    } else if (option == 4) {
      searchPatientById();
    } else if (option == 5) {
      addAppointmentSchedule();
    } else if (option == 6) {
      viewAppointmentRecord();
    } else if (option == 7) {
      condition = false;
      print("----------Exiting-----------");
      print(
          "Thank you for using the Hospital Management System. Have a wonderful day!");
    } else {
      print("Invalid option. Please choose a valid option");
    }
  }
}

//Function add patient........

addPatient() {
  stdout.write("Enter your ID: ");
  int id = int.parse(stdin.readLineSync()!);

  if (patientExists(id)) {
    print("");
    print(
        "----------Patient with ID: $id already exists please enter unique ID----------");
    return;
  }

  stdout.write("Enter your Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your Gender: ");
  String gender = stdin.readLineSync()!;

  stdout.write("Enter your Address: ");
  String address = stdin.readLineSync()!;

  stdout.write("Enter your Phone Number: ");
  int phone = int.parse(stdin.readLineSync()!);

  print("");

  Map<String, dynamic> newPatientMap = {
    "ID": id,
    "Name": name,
    "Age": age,
    "Gender": gender,
    "Address": address,
    "Phone Number": phone,
    "AppointmentSchedule": []
  };

  patientList.add(newPatientMap);

  print("----------Patient added Successfully----------");
}

// Function if patient exists.........
bool patientExists(int id) {
  return patientList.any((element) => element["ID"] == id);
}

//Function patient view records.........
viewPatientRecords() {
  if (patientList.isEmpty) {
    print("-----------No Patient Record Found----------");
  } else {
    print("Patient Record:");
    for (int i = 0; i < patientList.length; i++) {
      Map<String, dynamic> patientRecordExists = patientList[i];
      print(
          "ID: ${patientRecordExists["ID"]}, Name: ${patientRecordExists["Name"]}, Age: ${patientRecordExists["Age"]}, Gender: ${patientRecordExists["Gender"]}, Address: ${patientRecordExists["Address"]}, Contact Number: ${patientRecordExists["Phone Number"]}");
    }
  }
}

//Function patient delete........

deletePatientByID() {
  stdout.write("Enter Patient ID to delete: ");
  int id = int.parse(stdin.readLineSync()!);
  print("");

  bool foundPatient = patientList.any((element) => element["ID"] == id);

  if (foundPatient) {
    patientList.removeWhere((element) => element["ID"] == id);
    print("-----------Patient Deleted Successfully------------");
  } else {
    print("------------Patient not found------------");
  }
}

//Function Search patient.........

searchPatientById() {
  stdout.write("Enter Patient ID to search: ");
  int id = int.parse(stdin.readLineSync()!);
  print("");

  // bool check = false;
  Map<String, dynamic>? foundPatient;

  for (int i = 0; i < patientList.length; i++) {
    Map<String, dynamic> patientSearchExist = patientList[i];
    if (patientSearchExist["ID"] == id) {
      foundPatient = patientSearchExist;
      // check == true;
    }
  }

  if (foundPatient == null) {
    print("----------Patient not found----------");
  } else {
    print("Patient Matching Succesfully:");
    print(
        "ID: ${foundPatient["ID"]}, Name: ${foundPatient["Name"]}, Age: ${foundPatient["Age"]}, Gender: ${foundPatient["Gender"]}, Address: ${foundPatient["Address"]}, Contact Number: ${foundPatient["Phone Number"]}");
  }
}

//Function Add Patient Appoinment Schedule........

addAppointmentSchedule() {
  if (patientList.isEmpty) {
    print("No patients found. Please add patient first.");
  }

  stdout.write("Enter add Patient ID: ");
  int id = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Patient Name: ");
  String name = stdin.readLineSync()!;

  bool patientFound = false;

  for (int i = 0; i < patientList.length; i++) {
    Map<String, dynamic> addAppointment = patientList[i];
    if (addAppointment["ID"] == id &&
        addAppointment["Name"].toLowerCase() == name.toLowerCase()) {
      stdout.write("Enter Doctor Name: ");
      String docname = stdin.readLineSync()!;

      stdout.write("Enter Appointment Day: ");
      String appointmentDay = stdin.readLineSync()!;

      stdout.write("Enter Appointment Time: ");
      String appointmentTime = stdin.readLineSync()!;

      stdout.write("Enter Appointment Date: ");
      String appointmentDate = stdin.readLineSync()!;

      Map<String, dynamic> appointment = {
        "Doctor Name": docname,
        "Appointment Day": appointmentDay,
        "Appointment Time": appointmentTime,
        "Appointment Date": appointmentDate
      };
      addAppointment["AppointmentSchedule"].add(appointment);
      patientFound = true;
    }
  }

  if (patientFound == false) {
    print("----------Patient not found----------");
  } else {
    print("-----------Appointment add Schedule Successfully----------");
  }
}

//Function View Patient Appointment Schedule........

viewAppointmentRecord() {
  if (patientList.isEmpty) {
    print("-----------No Patient Schedule Record found-----------");
  } else {
    print("Patient Record:");
    print("");
    for (int i = 0; i < patientList.length; i++) {
      Map<String, dynamic> viewAppointment = patientList[i];
      print(
          "ID: ${viewAppointment["ID"]}, Name: ${viewAppointment["Name"]}, Age: ${viewAppointment["Age"]}, Gender: ${viewAppointment["Gender"]}, Address: ${viewAppointment["Address"]}, Contact Number: ${viewAppointment["Phone Number"]}");
      List<dynamic> appointmentSchedule =
          viewAppointment["AppointmentSchedule"];
      if (appointmentSchedule.isNotEmpty) {
        print("Appointment Schedule Record:");
        for (int j = 0; j < appointmentSchedule.length; j++) {
          Map<String, dynamic> appointment = appointmentSchedule[j];
          print(
              "Doctor Name: ${appointment["Doctor Name"]}, Appointment Day: ${appointment["Appointment Day"]}, Appointment Time: ${appointment["Appointment Time"]}, Appointment Date: ${appointment["Appointment Date"]}");
          print("");
        }
      } else {
        print("No Appointment Schedule For this Patient:");
        print("");
      }
    }
  }
}
