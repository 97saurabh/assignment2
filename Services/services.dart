import 'dart:convert';
import 'dart:io';
import '../records_utility.dart';

// Service
// to interact with File
// Abstract
class RecordServices {
  static String filePath = 'Records.txt';
  static RecordsUtility recordInstances = RecordsUtility();  // instance of Record Utlity (temp data)

  // fetch data from File and add to temp Data
  static void readFile(){
    try {
      File file = new File(filePath);
      var lines = file.readAsStringSync();
      var line = lines.split("\n");
      for(int i = 0;i < line.length-1 ; i++){
        var jsonData = jsonDecode(line[i]);
        recordInstances.data[jsonData['rollNo']] = jsonData;
      }
    }
    catch (e){
      print("We have some issue with our DataBase");
      print("................No Record Fetched....................");
    }
  }

  // Update our File with temporary data
  static void updateFile() {
  
    File file = new File(filePath);
    String total = "";
    for (var key in recordInstances.data.keys) {
      //print("Print");
      String temp = json.encode(recordInstances.data[key]);
      total = total + temp + '\n';
    }
    file.writeAsStringSync(total);
  }
}