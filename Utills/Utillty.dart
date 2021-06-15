import 'dart:io';
import '../Functions/AddRecord.dart';
import '../Functions/deleteUserData.dart';
import '../Functions/saveUserDetailsLocally.dart';
import '../Functions/displayUserDetails.dart' as userdata;
import '../Functions/fetchData.dart';
class UtilityIO {

  // getting data from databse
  static Map<int,Map<String,dynamic>> getDatabaseData(){
    Map<int,Map<String,dynamic>> data = readingFile();

    return data;

  }
  // saving data to database
  static void setDatabaseData(Map<int,Map<String,dynamic>> data){
      saveUSerDetails(data);
  }

  static Map<int,Map<String,dynamic>> deleteData(Map<int,Map<String,dynamic>> data){
   data = deleteRecord(data);
   return data; 
  }

  static Map<int,Map<String,dynamic>> addNewData(Map<int,Map<String,dynamic>> data){
    data = addingRecording(data);
    return data; 
  }

  static void displayData(Map<int,Map<String,dynamic>> data){
    userdata.displayData(data);
  }


  // Use for Input
  static String InputUtility(Map<int,Map<String,dynamic>> data){
    String choice;

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
    while(true){
      
      stdout.write("Provide choice here:- ");
      choice = stdin.readLineSync();
      switch(choice){
        case "1": data = UtilityIO.addNewData(data);
                  break;
        case "2": UtilityIO.displayData(data);              
                  break;
        case "3": UtilityIO.deleteData(data); 
                  break;
        case "4": print("save user details");
                  UtilityIO.setDatabaseData(data);
                  break;
        case "5": print("Before quiting, enter yes to store recent updates,else no");
                  return stdin.readLineSync();
        default : print("Invalid please again");
                  break;
      }

    }
  }

}