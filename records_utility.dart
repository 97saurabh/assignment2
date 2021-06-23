import 'dart:io'; 
import 'Exceptions.dart'; // Custom Exception


class RecordsUtility {

  Map<int,dynamic> data = {}; // temporary records  
  static final RecordsUtility _singleton = RecordsUtility._internal(); 

  // This part of code will interact with User and create new record
  bool addRecord({String name, String address,int rollNo,int age,List<String> subjects}){

      if (this.data.containsKey(rollNo) || subjects.length != 4){
        return false;
      }
      else{
        this.data[rollNo] = {
          'name' : name,
          'address' : address,
          'rollNo' : rollNo,
          'age' : age,
          'subjects' : subjects

        };
        return true;
      }
      



  }//addrecord

  bool deleteRecord({int rollNo}){
    if(this.data.containsKey(rollNo)){
      this.data.remove(rollNo);
      return true;  
    }
    return false;

  }//deleteData

  factory RecordsUtility() {
    return _singleton;
  }

  RecordsUtility._internal();
}