import 'dart:io';
import 'dart:convert';

Map<int,Map<String,dynamic>> readingFile() {
  
  Map<int,Map<String,dynamic>> data = {};

  print(".............Geting old record.......");
 for(int i=0; i<2;i++){
   print(".");
   sleep(Duration(seconds:1));
 }

  try {
  var path = 'dataBaseUser.txt';
  File file = new File(path);


  var lines = file.readAsStringSync();
  var line = lines.split("\n");
  for(int i = 0;i < line.length-1 ; i++){
    var jsonData = jsonDecode(line[i]);
    data[jsonData['rollNo']] = jsonData;

  }
  print(".....................Record Fetched................."); 
  }
  catch (e){
    print("We have some issue with our DataBase");
    print("................No Record Fetched....................");
  }
  
  return data;
}