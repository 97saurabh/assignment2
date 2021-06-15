import 'dart:io';
import '../Utills/Exception.dart';
Map<int,Map<String,dynamic>> addingRecording(Map<int,Map<String,dynamic>> data){

  String name,address;
  int rollNo,age;
  List<String> subjects;
  print("--------------------------------------------------------------");
  print("To add new record you have to provide details in given format");
  print("1. Name of the Student");
  print("2. Roll No of student, must be integer");
  print("3. Age of student, must be integer");
  print("4. Address of student");
  print("5. Provide 5 subjects name, available options are:- A,B,C,D,E,F ");
  print("--------------------------------------------------------------");
  
  // Name input
  stdout.write("Enter Student Name:- ");
  while(true){
    String tempName = stdin.readLineSync();
    if(tempName.length < 2){
      print("Name can  be greater then 2 length");
      stdout.write("Enter Student Name Again:- ");
    }
    else{
      name = tempName;
      break;
    }
  }

// Roll no
  stdout.write("Enter Student Roll No:- ");
  while (true){
    String rollno = stdin.readLineSync();
    if (rollno == 'cancel'){
      return data;
    }
    try{
      rollNo = int.parse(rollno);
      if (data.containsKey(rollNo)){
        print("Already Availablke");
        throw RollNoAlreadyExist();
      }
      break;
    }
    on FormatException {
      stdout.write("Please Enter integer roll no, else Emter:-  cancel =>");
    }
    on RollNoAlreadyExist {
      print("Rollno Entered is already in database");
      stdout.write("Please Enter unique and integer roll no, else Emter:-  cancel =>");
    }
    catch(e){
      print("Something went wrong");
      stdout.write("Please Enter integer roll no, else Enter:-  cancel =>");
    }
  }
// Age
stdout.write("Enter Student Age:- ");
  while (true){
    String tempAge = stdin.readLineSync();
    if (tempAge == 'cancel'){
      return data;
    }
    try{
      age = int.parse(tempAge);
      break;
    }
    on FormatException {
      stdout.write("Please Enter integer age, else Emter:-  cancel =>");
    }
    catch(e){
      print("Something went wrong");
      stdout.write("Please Enter integer age, else Enter:-  cancel =>");
    }
  }


// Addresss
stdout.write("Enter Student Address:- ");
  while(true){
    String tempAddress = stdin.readLineSync();
    if(tempAddress.length == 0){
      print("Address can not be of 0 length");
      stdout.write("Enter Student Address Again:- ");
    }
    else{
      address = tempAddress;
      break;
    }
 }

 // Subjects
 stdout.write("Enter Students Subjects ( exactly 4 ) { A,B,C,D,E,F }:- ");
 List<String> tempSubjects = [];
  while(true){
    String tempSub = stdin.readLineSync();
    if(tempSub == "cancel"){
      return data;
    }
    else if(tempSub != 'A' && tempSub != 'B' && tempSub != 'C' && tempSub != 'D' && tempSub != 'E' && tempSub != 'F'){
      print("Subject name will be :- A,B,C,D,E,F");
      stdout.write("Enter Student Subject Again:- ");
    }
    else if(tempSub.length != 1){
      print("Subject name will be :- A,B,C,D,E,F");
      stdout.write("Enter Student Subject Again or cancel:- ");
    }
    else if(tempSubjects.contains(tempSub)){
      print("You have choosed this subject, please choose anyone else");
      print("Subject name will be :- A,B,C,D,E,F");
      stdout.write("Enter Student Subject Again or cancel:- ");
    }
    else {
      tempSubjects.add(tempSub);
      
      if(tempSubjects.length == 4){
        subjects= tempSubjects;
        break;
      }
      stdout.write("Enter Students next Subject or cancel:- ");
    }
 }

 print(".............Saving new record.......");
 for(int i=0; i<5;i++){
   print(".");
   sleep(Duration(seconds:1));
 }
 
 data[rollNo] = {
    "name": name,
    "rollNo": rollNo,
    "age": age,
    "address": address,
    "subject": subjects
};



  //print(name + " " + rollNo.toString());



  print("-----------------------------------------");
  print("--------Record Added Succefully ---------");
  print("-----------------------------------------");

  return data;
}