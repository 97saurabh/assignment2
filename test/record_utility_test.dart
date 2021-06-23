import 'package:test/test.dart';
import '../Services/services.dart';
import '../records_utility.dart';
main() {
  group('Testing Record Utility', () {

      RecordsUtility recordInstances = RecordsUtility();
      recordInstances.data = {
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
      test('Adding new record with unique roll no', () {
        bool actual = recordInstances.addRecord( name: 'Saurabh Singh', rollNo: 17052036,address: 'Kanpur', age: 22,subjects: ['A','B','C','D']);
        bool expected = true;
        expect(actual,expected);

      });

      test('Adding new record with unique roll no, more then 4 subjets', () {
        bool actual = recordInstances.addRecord( name: 'Saurabh Singh', rollNo: 17052035,address: 'Kanpur', age: 22,subjects: ['D','A','B','C','D']);
        bool expected = false;
        expect(actual,expected);

      });

      test('Deleterecord with unique roll no', () {
        bool actual = recordInstances.deleteRecord(rollNo: 17052036);
        bool expected = true;
        expect(actual,expected);

      });

      test('Delete record with unique roll no, Alredy Deleted rollNo', () {
        bool actual = recordInstances.deleteRecord(rollNo: 17052035);
        bool expected = false;
        expect(actual,expected);

      });
  
  });
}