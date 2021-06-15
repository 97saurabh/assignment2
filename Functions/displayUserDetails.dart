import 'dart:io';
import 'dart:convert';
import '../Student.dart';
void displayData(Map<int,Map<String,dynamic>> data){

  String choice;
  print("--------------------------------------------------------------");
  print("------------------------Displaying Data-----------------------");
  print("--------------------------------------------------------------");
  stdout.write("Press, 1 for Sorting in Ascending order, 2 for Desending order, cancel to go back to previous menu");

  List<Student> studentData = [];
  for (var k in data.keys) {
    studentData.add(Student.fromJson(data[k]));
  }

  studentData.sort((Student obj1,Student obj2){
  
  String name1 = obj1.name;
  String name2 = obj2.name;
  
  int rollNo1 = obj1.rollNo;
  int rollNo2 = obj2.rollNo;
  
  if(name1.compareTo(name2) == 0){
    
    return rollNo1.compareTo(rollNo2);
  }
  return name1.compareTo(name2);  
});



  outerLoop :while(true){

    choice = stdin.readLineSync();

    switch(choice){
      case "cancel":  print("GOing back to previous menuy");
                      break outerLoop;
      case "1":  print("Printing data in Increrasing order");
                  for(var i = 0;i<studentData.length;i++){
                    print(studentData[i].toJson());
                    //print(json.encode(studentData[i].toJson()));
                  }
                  break;
      case "2":  print("Printing data in Decresing order");
                  for(var i = studentData.length-1;i>=0;i--){
                    print(studentData[i].toJson());
                  }
                  break;
      default: print("Printing data in Increrasing order");
                  break;
    }
  }
}
