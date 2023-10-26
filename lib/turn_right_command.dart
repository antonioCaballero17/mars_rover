import 'package:mars_rover/command.dart';
import 'package:mars_rover/position.dart';

class TurnRightCommand extends Command {
  @override
  String turnDirection({required String direction}) {
    switch (direction) {
      case 'N':
        return 'E';
      case 'S':
        return 'W';
      case 'E':
        return 'S';
      case 'W':
        return 'N';
      default:
        return direction;
    }
  }

  @override
  Position moveOne({required Position position, required String direction}) =>
      position;
}
