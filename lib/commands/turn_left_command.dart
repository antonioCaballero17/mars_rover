import 'package:mars_rover/commands/command.dart';
import 'package:mars_rover/direction.dart';
import 'package:mars_rover/models/position.dart';

class TurnLeftCommand extends Command {
  @override
  Direction turnDirection({required Direction direction}) =>
      direction.turnLeft();

  @override
  Position moveOne({required Position position, required String direction}) =>
      position;
}
