import 'package:mars_rover/commands/command.dart';
import 'package:mars_rover/models/position.dart';

class TurnLeftCommand extends Command {
  @override
  String turnDirection({required String direction}) {
    switch (direction) {
      case 'N':
        return 'W';
      case 'S':
        return 'E';
      case 'E':
        return 'N';
      case 'W':
        return 'S';
      default:
        return direction;
    }
  }

  @override
  Position moveOne({required Position position, required String direction}) =>
      position;
}
