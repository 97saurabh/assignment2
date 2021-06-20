import 'dart:developer';
import 'IOUtility.dart';
import 'Services/services.dart';
import 'records_utility.dart';

main(List<String> args) {

  // fetch records from File
  RecordServices.readFile();

  //Input out utility
  IOUtility.InputUtility();
  
    
}