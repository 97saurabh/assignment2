import 'Utills/Utillty.dart';
main(List<String> args) {

  Map<int,Map<String,dynamic>> data = UtilityIO.getDatabaseData();
  
  String choice = UtilityIO.InputUtility(data);

  switch(choice){
    case 'yes': 
                UtilityIO.setDatabaseData(data);
                break;
    default:  print(".......Recent updates not stored............");
  }

  print("Thanks, for being our customer");  

}