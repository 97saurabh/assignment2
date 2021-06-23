import 'package:test/test.dart';
import '../Services/services.dart';
import '../records_utility.dart';
main() {
  group('Testing Services.............', () {

      RecordServices.filePath = 'test1.txt';
      RecordServices.readFile();
      RecordsUtility recordInstances = RecordsUtility();
      var actual = recordInstances.data;
      var expected = {
              1705213039: {
                'name': 'Saurabh Singh',       
                'rollNo': 1705213039,
                'age': 25,
                'address': '35/5 Shyam',       
                'subject': ['A', 'B', 'C', 'D']
              },
              1705213035: {
                'name': 'Shanu Singh',
                'rollNo': 1705213035,
                'age': 23,
                'address': 'Lucknow',
                'subject': ['A', 'B', 'C', 'D']
              },
              1705213001: {
                'name': 'Raju Yadav',
                'rollNo': 1705213001,
                'age': 23,
                'address': 'Lucknow',
                'subject': ['A', 'B', 'C', 'D']
              },
              1705213063: {
                'name': 'Raju Yadav',
                'rollNo': 1705213063,
                'age': 23,
                'address': 'Lucknow',
                'subject': ['A', 'B', 'C', 'D']
              },
              1705213003: {
                'name': 'Abhishek Agrwal',
                'rollNo': 1705213003,
                'age': 23,
                'address': 'Lucknow',
                'subject': ['A', 'B', 'C', 'D']
              },
              1705213056: {
                'name': 'Swadesh Shivam',
                'rollNo': 1705213056,
                'age': 22,
                'address': 'Mirzapur',
                'subject': ['A', 'B', 'C', 'D']
              }
            };        
      test('When testing recod file with data', () {
        expect(actual,expected);
      });
      recordInstances.data = {};

      RecordServices.filePath = 'test2.txt';
      RecordServices.readFile();
      recordInstances = RecordsUtility();
      actual = recordInstances.data;
      expected = {};
      test('When testing recod file with no data', () {
        expect(actual,expected);
      });   
  
  });
}