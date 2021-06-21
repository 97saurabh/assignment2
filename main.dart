import 'dart:developer';
import 'I_o_utility.dart';
import 'Services/services.dart';
import 'records_utility.dart';

main(List<String> args) {

  // fetch records from File
  RecordServices.readFile();

  //Input out utility
  IOUtility.InputUtility();
  
    
}