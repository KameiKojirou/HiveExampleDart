import 'package:hive/hive.dart';

void main() async {
  Hive.init('database');
  var box = await Hive.openBox('testBox');
  box.put('name', 'David');
  print('Name: ${box.get('name')}');
}