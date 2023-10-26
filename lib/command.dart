import 'package:mars_rover/position.dart';

abstract class Command {
  Position moveOne({required Position position, required String direction});
  String turnDirection({required String direction});
}
