import 'dart:io';
import 'records_utility.dart'; 
import 'Exceptions.dart'; // Custom Exception


class IOUtilityforCmd {

   
  static final IOUtilityforCmd _singleton = IOUtilityforCmd._internal();
  static final RecordsUtility instanceRecordUtility =  RecordsUtility();

  // This part of code will interact with User and create new record
  bool addRecord(){

      String name,address;// Student name and address
      int rollNo,age; // Student roll no and age
      List<String> subjects; // List of subjects
      print("--------------------------------------------------------------");
      print("To add new record you have to provide details in given format");
      print("1. Name of the Student");
      print("2. Roll No of student, must be integer");
      print("3. Age of student, must be integer");
      print("4. Address of student");
      print("5. Provide 5 subjects name, available options are:- A,B,C,D,E,F ");
      print("--------------------------------------------------------------");

      // here we will take users input for name
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




      // here we will take users input for roll
      // roll no should be unique 
      stdout.write("Enter Student Roll No:- ");
      while (true){
        String rollno = stdin.readLineSync();
        if (rollno == 'cancel'){
          break;
        }
        try{
          rollNo = int.parse(rollno);
          break;
        }
        on FormatException {
          stdout.write("Please Enter integer roll no, else Emter:-  cancel =>");
        }
        catch(e){
          print("Something went wrong");
          stdout.write("Please Enter integer roll no, else Enter:-  cancel =>");
        }
      }

      // here we will take users input for age should b integer
      stdout.write("Enter Student Age:- ");
      while (true){
        String tempAge = stdin.readLineSync();
        if (tempAge == 'cancel'){
          break;
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


      // here we will take users input for address
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
      // here we will take users input for Subjects
      // permissible subjects are A,B,C,D,E,F
      // User has to enter 4 subjects
      stdout.write("Enter Students Subjects ( exactly 4 ) { A,B,C,D,E,F }:- ");
      List<String> tempSubjects = [];
        while(true){
          String tempSub = stdin.readLineSync();
          if(tempSub == "cancel"){
            break;
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
      }//subjects while


      // Here data will be passed
      if (instanceRecordUtility.addRecord(name:name, address:address,rollNo:rollNo,age:age,subjects:subjects)){
        print('Record Updated');
      }
      else{
        print('Roll No already available');
      }

  }//addrecord

  bool deleteRecord(){

    int rollNo;
    print("--------------------------------------------------------------");
    print("------------------------DELETE DATA---------------------------");
    print("--------------------------------------------------------------");
    


    // here we will take users input for roll, that he wants to delete
    // 
    stdout.write("Please Enter rollno to delete data:- ");
    while (true){
      String rollno = stdin.readLineSync();
      if (rollno == 'cancel'){
        break;
      }
      try{
        rollNo = int.parse(rollno);
        // Here call
        return instanceRecordUtility.deleteRecord(rollNo: rollNo);        
      }
      on FormatException {
        stdout.write("Please Enter integer roll no, else Emter:-  cancel =>");
      }
      catch(e){
        print("Something went wrong");
        stdout.write("Please Enter integer roll no, else Enter:-  cancel =>");
      }
    }
  }//deleteData

  factory IOUtilityforCmd() {
    return _singleton;
  }

  IOUtilityforCmd._internal();
}