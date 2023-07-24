import 'dart:io';

List<Map<String, dynamic>> patientList = [];
// List<Map<String, dynamic>> appointment = [];
void main() {
  bool condition = true;

  while (condition == true) {
    print("");
    print("========== Hospital Management System ==========");
    print("");
    print("Press Key 1: Add Patient Details");
    print("Press Key 2: Update Patient Details");
    print("Press Key 3: View Patient Records");
    print("Press Key 4: Delete Patient Details");
    print("Press Key 5: Search Patient Details");
    print("Press Key 6: Add Patient Appointment Schedule");
    print("Press Key 7: View All Patient Appointment Schedule & record");
    print("Press Key 8: Exit");

    print("");

    stdout.write("Enter your Option please: ");
    int option = int.parse(stdin.readLineSync()!);

    print("");

    if (option == 1) {
      addPatient();
    } else if (option == 2) {
      updatePatientInfo();
    } else if (option == 3) {
      viewPatientRecords();
    } else if (option == 4) {
      deletePatientByID();
    } else if (option == 5) {
      searchPatientById();
    } else if (option == 6) {
      addAppointmentSchedule();
    } else if (option == 7) {
      viewAppointmentRecord();
    } else if (option == 8) {
      condition = false;
      print("---------- Exiting -----------");
      print(
          "Thank you for using the Hospital Management System. Have a wonderful day!");
    } else {
      print(
          "---------- Invalid option. Please choose a valid option ----------");
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
        "---------- Patient with ID: $id already exists please enter unique ID ----------");
    return;
  }

  stdout.write("Enter your Name: ");
  String name = stdin.readLineSync()!;
  name.toLowerCase();

  stdout.write("Enter your Father Name: ");
  String fName = stdin.readLineSync()!;

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
    "Father Name": fName,
    "Age": age,
    "Gender": gender,
    "Address": address,
    "Phone Number": phone,
    "AppointmentSchedule": []
  };

  patientList.add(newPatientMap);

  print("---------- Patient added Successfully ----------");
}

// Function if patient exists.........
bool patientExists(int id) {
  return patientList.any((element) => element["ID"] == id);
}

//Function patient view records.........
viewPatientRecords() {
  if (patientList.isEmpty) {
    print("----------- No Patient Record Found ----------");
  } else {
    print("Patient Records:");

    for (int i = 0; i < patientList.length; i++) {
      Map<String, dynamic> patientRecordExists = patientList[i];
      print("ID: ${patientRecordExists["ID"]}");
      print("Name: ${patientRecordExists["Name"]}");
      print("Father Name: ${patientRecordExists["Father Name"]}");
      print("Age: ${patientRecordExists["Age"]}");
      print("Gender: ${patientRecordExists["Gender"]}");
      print("Address: ${patientRecordExists["Address"]}");
      print("Contact Number: ${patientRecordExists["Phone Number"]}");
      print("");
    }
  }
}

//Function Update Patient Info......
updatePatientInfo() {
  if (patientList.isEmpty) {
    print("---------- No Patient Update Found ----------");
  }

  stdout.write("Enter the Patient ID you want to Update: ");
  int idUpdating = int.parse(stdin.readLineSync()!);

  Map<String, dynamic>? patientToUpdate;

  for (int i = 0; i < patientList.length; i++) {
    Map<String, dynamic> patient = patientList[i];
    if (patient["ID"] == idUpdating) {
      patientToUpdate = patient;
    }
  }

  if (patientToUpdate == null) {
    print("---------- Patient with ID: $idUpdating Not Found ----------");
  } else {
    print("Current Patient Detail:");
    print("Name: ${patientToUpdate["Name"]}");
    print("Father Name: ${patientToUpdate["Father Name"]}");
    print("Age: ${patientToUpdate["Age"]}");
    print("Gender: ${patientToUpdate["Gender"]}");
    print("Address: ${patientToUpdate["Address"]}");
    print("Contact Number: ${patientToUpdate["Phone Number"]}");
    print("");

    stdout.write("Enter Patient Name for Update: ");
    String nameUpdate = stdin.readLineSync()!;

    stdout.write("Enter Patient Father Name for Update: ");
    String fNameUpdate = stdin.readLineSync()!;

    stdout.write("Enter Patient Age for Update: ");
    int ageUpdate = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Patient Gender for Update: ");
    String genderUpdate = stdin.readLineSync()!;

    stdout.write("Enter Patient Address for Update: ");
    String addressUpdate = stdin.readLineSync()!;

    stdout.write("Enter Contact Number for Update: ");
    int phoneUpdate = int.parse(stdin.readLineSync()!);

    patientToUpdate["Name"] = nameUpdate;
    patientToUpdate["Father Name"] = fNameUpdate;
    patientToUpdate["Age"] = ageUpdate;
    patientToUpdate["Gender"] = genderUpdate;
    patientToUpdate["Address"] = addressUpdate;
    patientToUpdate["Phone Number"] = phoneUpdate;

    print("");
    print("---------- Patient Details Updated Successfully ----------");
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
    print("----------- Patient Deleted Successfully ------------");
  } else {
    print("------------ Patient with $id not found ------------");
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
    print("---------- Patient not found ----------");
  } else {
    print("Patient Matching Succesfully:");
    print("ID: ${foundPatient["ID"]}");
    print("Name: ${foundPatient["Name"]}");
    print("Father Name: ${foundPatient["Father Name"]}");
    print("Age: ${foundPatient["Age"]}");
    print("Gender: ${foundPatient["Gender"]}");
    print("Address: ${foundPatient["Address"]}");
    print("Contact Number: ${foundPatient["Phone Number"]}");
  }
}

//Function Add Patient Appoinment Schedule........

addAppointmentSchedule() {
  if (patientList.isEmpty) {
    print("No patients found. Please add Patient first.");
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
    print("---------- Patient not found ----------");
  } else {
    print("----------- Appointment add Schedule Successfully ----------");
  }
}

//Function View Patient Appointment Schedule........

viewAppointmentRecord() {
  if (patientList.isEmpty) {
    print("----------- No Patient Schedule Record found -----------");
  } else {
    print("Patient Record:");
    for (int i = 0; i < patientList.length; i++) {
      Map<String, dynamic> viewAppointment = patientList[i];
      print("ID: ${viewAppointment["ID"]}");
      print("Name: ${viewAppointment["Name"]}");
      print("Father Name: ${viewAppointment["Father Name"]}");
      print("Age: ${viewAppointment["Age"]}");
      print("Gender: ${viewAppointment["Gender"]}");
      print("Address: ${viewAppointment["Address"]}");
      print("Contact Number: ${viewAppointment["Phone Number"]}");
      print("");

      List<dynamic> appointmentSchedule =
          viewAppointment["AppointmentSchedule"];
      if (appointmentSchedule.isNotEmpty) {
        print("----------- Appointment Schedule Record ----------");
        for (int j = 0; j < appointmentSchedule.length; j++) {
          Map<String, dynamic> appointment = appointmentSchedule[j];
          print("Doctor Name: ${appointment["Doctor Name"]}");
          print("Appointment Day: ${appointment["Appointment Day"]}");
          print("Appointment Time: ${appointment["Appointment Time"]}");
          print("Appointment Date: ${appointment["Appointment Date"]}");

          print("");
        }
      } else {
        print(
            "------------ No Appointment Schedule For this Patient -----------");
        print("");
      }
    }
  }
}
