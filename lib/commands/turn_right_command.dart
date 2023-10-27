import 'package:mars_rover/commands/command.dart';
import 'package:mars_rover/direction.dart';
import 'package:mars_rover/models/position.dart';

class TurnRightCommand extends Command {
  @override
  Direction turnDirection({required Direction direction}) =>
      direction.turnRight();

  @override
  Position moveOne({required Position position, required String direction}) =>
      position;
}
