import 'package:mysql1/mysql1.dart'; 
Future quer(String sql, [List<Object> values]) async {
  var settings = ConnectionSettings(
  host: 'localhost', 
  port: 3306,
  user: 'wangbangxiang',
  password: 'aIRl#yTIL%o@fd6Y',
  db: 'camera'
);
var conn = await MySqlConnection.connect(settings);
var results = await conn.query(sql,values);
await conn.close();
return results;
}