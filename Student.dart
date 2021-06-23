class Student {
  String name; // Student name 
  int rollNo; // rollno of Student
  int age;   // age of Student
  String address; // permanent address of Student
  List<String> subject; // List of Subjects selected by Student
  
  // Constructor Function
  Student(this.name, this.rollNo, this.age, this.address, this.subject);

  // converting json data to objects
  Student.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    rollNo = json['rollNo'];
    age = json['age'];
    address = json['address'];
    subject = json['subject'].cast<String>();
  }
  
  // Student object to json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['rollNo'] = this.rollNo;
    data['age'] = this.age;
    data['address'] = this.address;
    data['subject'] = this.subject;
    return data;
  }
}
