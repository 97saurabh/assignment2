import 'dart:io';
import 'dart:convert';
void saveUSerDetails(var data) {
  File file = new File("dataBaseUser.txt");
  

  String total = "";
  for (var k in data.keys) {
    //print("Print");
    String ab = json.encode(data[k]);
    total = total + ab + '\n';
  }
  file.writeAsStringSync(total);
}


// writeAsStringSync(
// String contents,
// {FileMode mode = FileMode.write,
// Encoding encoding = utf8,
// bool flush = false}
// )