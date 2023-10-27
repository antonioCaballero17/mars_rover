import 'package:mars_rover/direction.dart';
import 'package:mars_rover/models/position.dart';

abstract class Command {
  Position moveOne({required Position position, required String direction});
  Direction turnDirection({required Direction direction});
}
