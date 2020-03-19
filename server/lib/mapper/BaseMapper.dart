import 'package:mysql1/mysql1.dart'; 
Future BaseMapper(String sql, [List<Object> values]) async {
  var settings = ConnectionSettings(
  host: 'localhost', 
  port: 3306,
  user: 'root',
  password: 'root',
  db: 'camera'
);
var conn = await MySqlConnection.connect(settings);
var results = await conn.query(sql,values);
await conn.close();
return results;
}