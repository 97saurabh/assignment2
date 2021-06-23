import 'Student.dart';
// Sort Student Objects According to Name
void sortByNameAsc(List<Student> data){
  data.sort((Student obj1,Student obj2){      
      String name1 = obj1.name;
      String name2 = obj2.name;      
      int rollNo1 = obj1.rollNo;
      int rollNo2 = obj2.rollNo;      
      if(name1.compareTo(name2) == 0){        
        return rollNo1.compareTo(rollNo2);
      }
      return name1.compareTo(name2);  
    });
}
// Sort Student Objects According to Roll No
void sortByRollNoAsc(List<Student> data){
  data.sort((Student obj1,Student obj2){      
      String name1 = obj1.name;
      String name2 = obj2.name;      
      int rollNo1 = obj1.rollNo;
      int rollNo2 = obj2.rollNo;      
      if(rollNo1.compareTo(rollNo2) == 0){        
        return name1.compareTo(name2);
      }
      return rollNo1.compareTo(rollNo2);  
    });
}


// Sort Student Objects According to Address
void sortByAddressAsc(List<Student> data){
  data.sort((Student obj1,Student obj2){      
      String name1 = obj1.name;
      String name2 = obj2.name;      
      String address1 = obj1.address;
      String address2 = obj2.address;      
      if(address1.compareTo(address2) == 0){        
        return name1.compareTo(name2);
      }
      return address1.compareTo(address2);  
    });
}
// Sort Student Objects According to Age
void sortByAgeAsc(List<Student> data){
  data.sort((Student obj1,Student obj2){      
      String name1 = obj1.name;
      String name2 = obj2.name;
      int age1 = obj1.age;
      int age2 = obj2.age;      
      if(age1.compareTo(age2) == 0){        
        return name1.compareTo(name2);
      }
      return age1.compareTo(age2);  
    });
}