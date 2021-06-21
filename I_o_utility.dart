import 'dart:io';
import 'Services/services.dart';
import 'records_utility.dart';
import 'Student.dart';
import 'utility_function.dart';


// It is designed to run all program according to given choices
// Abstract Class
class IOUtility {

  static RecordsUtility recordUtility = RecordsUtility(); // instance of Record utility

  // This piece of code will interact with User
  // Menu driven Program
  static void InputUtility(){
    String choice; // choices entered by user from cmd 

    print("---------------------------");
    print("----------MAIN MENU --------");
    print("----------------------------");
    print("Welcome to Portal");
    print("Choose any of these option");
    print("Add User details:- 1");
    print("Display User details:- 2");
    print("Delete User details:- 3");
    print("Save User details:- 4");
    print("Exit:- 5");
    print("------------------------");
    print("------------------------");
    outerloop:while(true){
      print('MAIN MENU');
      stdout.write("Provide choice here:- ");
      choice = stdin.readLineSync();
      switch(choice){
        case "1": recordUtility.addRecord(); // adding records to our temporary data
                  break;
        case "2": outputUtility(); // Displaying Records to user             
                  break;
        case "3": recordUtility.deleteRecord(); // Delete records from temporary data
                  break;
        case "4": RecordServices.updateFile(); // temporary data will be saved to Record Files
                  break;
        case "5": print("Before quiting, enter yes to store recent updates,else no");
                  String choice =  stdin.readLineSync();
                  switch(choice){
                    case 'yes': RecordServices.updateFile(); // If user want to save record to File 'yes'
                                print('Record Saved');
                                break outerloop;
                    default:  print(".......Recent updates not stored............");
                  }
                  break outerloop;
        default : print("Invalid please again");
                  break;
      }
    }
  }//input utility


  static void outputUtility(){
    
      print("--------------------------------------------------------------");
      print("------------------------Displaying Data-----------------------");
      print("--------------------------------------------------------------");
      print("1. Ascending order Name");
      print("2. Ascending order Roll");
      print("3. Ascending order Age");
      print("4. Ascending order Address");
      stdout.write("Press your choice, cancel to go back to previous menu");
      
      String choice;
      
      List<Student> studentRecord = [];// objects of Students 
      for (var key in recordUtility.data.keys) {
        studentRecord.add(Student.fromJson(recordUtility.data[key]));
      }     

      // Records will be in Sorted format, according to users choice
      choice = stdin.readLineSync();
      switch(choice){
        case "cancel":  print("GOing back to previous menuy");
                        break;
        case "1":  print("Printing data in Increrasing order of Name");
                    sortByNameAsc(studentRecord);
                    for(var i = 0;i<studentRecord.length;i++){
                      print(studentRecord[i].toJson());
                    }
                    break;
        case "2":  print("Printing data in Increrasing order of Roll");
                    sortByRollNoAsc(studentRecord);
                    for(var i = 0;i<studentRecord.length;i++){
                      print(studentRecord[i].toJson());
                    }
                    break;
        case "3":  print("Printing data in Increrasing order of Age");
                    sortByAgeAsc(studentRecord);
                    for(var i = 0;i<studentRecord.length;i++){
                      print(studentRecord[i].toJson());
                    }
                    break;
        case "4":  print("Printing data in Increrasing order of Address");
                    sortByNameAsc(studentRecord);
                    for(var i = 0;i<studentRecord.length;i++){
                      print(studentRecord[i].toJson());
                    }
                    break;
        default:
                print("Choose form given options");
      }
  
}//output utility

  
}