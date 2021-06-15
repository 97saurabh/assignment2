import 'dart:io';
Map<int,Map<String,dynamic>> deleteRecord(Map<int,Map<String,dynamic>> data){

  int rollNo;
  print("--------------------------------------------------------------");
  print("------------------------DELETE DATA---------------------------");
  print("--------------------------------------------------------------");
  
  stdout.write("Please Enter rollno to delete data:- ");
  while (true){
    String rollno = stdin.readLineSync();
    if (rollno == 'cancel'){
      return data;
    }
    try{
      rollNo = int.parse(rollno);
      if (data.containsKey(rollNo)){
        print("Deleting Data");
        data.remove(rollNo);
        print("...");
        for(int i=0; i<2;i++){
            print(".");
            sleep(Duration(seconds:1));
          }
        print("Deleted");
        break;
      }
      else{
        print("Roll no is not available in our record or already deleted");
        stdout.write("Please Enter integer roll no, else Emter:-  cancel => ");
      }
      
    }
    on FormatException {
      stdout.write("Please Enter integer roll no, else Emter:-  cancel =>");
    }
    catch(e){
      print("Something went wrong");
      stdout.write("Please Enter integer roll no, else Enter:-  cancel =>");
    }
  }

return data;


}