import 'package:dartCamera/dartCamera.dart' as dartCamera;
import 'package:dartCamera/mapper/TestMapper.dart' as testMapper;
void main(List<String> arguments) {
  testMapper.getTestById(1);
  print('Hello world: ${dartCamera.calculate()}!');
}
