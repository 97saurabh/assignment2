class Student {
  String name;
  int rollNo;
  int age;
  String address;
  List<String> subject;

  Student(this.name, this.rollNo, this.age, this.address, this.subject);

  Student.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    rollNo = json['rollNo'];
    age = json['age'];
    address = json['address'];
    subject = json['subject'].cast<String>();
  }

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
