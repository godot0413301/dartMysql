import 'package:mysql1/mysql1.dart'; 
Future<MySqlConnection> BaseMapper() async {
  var settings = ConnectionSettings(
  host: 'localhost', 
  port: 3306,
  user: 'root',
  password: 'root',
  db: 'camera'
);
var conn = await MySqlConnection.connect(settings);
return conn;
}