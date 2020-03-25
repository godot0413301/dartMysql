import 'BaseMapper.dart';
import 'package:dartCamera/model/Test.dart';
var database='test';
 Future  addTest() async {
      await quer('insert into ${database} (name) values (?)', ['Bob']);
  }
Future getTestById(id) async{
  // var userId=1;
  var results = await quer('select id,name from ${database} where id = ?', [id]);
  for (var row in results) {
  print('id: ${row[0]}, name: ${row[1]}');
  };
}