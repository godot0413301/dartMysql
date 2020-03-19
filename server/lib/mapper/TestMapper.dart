import 'BaseMapper.dart';

 Future  addTest() async{
   await BaseMapper('insert into test (name) values (?)', ['Bob']);
  }
Future getTest() async{
  var userId=1;
  var results = await BaseMapper('select id,test from test where id = ?', [userId]);
  for (var row in results) {
  print('id: ${row[0]}, name: ${row[1]}');
  };
}