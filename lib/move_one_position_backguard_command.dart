import 'package:mars_rover/command.dart';
import 'package:mars_rover/mars.dart';
import 'package:mars_rover/position.dart';

class MoveOnePositionBackwardCommand implements Command {
  @override
  Position moveOne({required Position position, required String direction}) {
    switch (direction) {
      case 'N':
        if (position.y == 0) {
          return Position(x: position.x, y: Mars.planetEdgeY);
        }
        return Position(x: position.x, y: position.y - 1);

      case 'S':
        if (position.y == Mars.planetEdgeY) {
          return Position(x: position.x, y: 0);
        }
        return Position(x: position.x, y: position.y + 1);

      case 'E':
        if (position.x == 0) {
          return Position(x: Mars.planetEdgeX, y: position.y);
        }
        return Position(x: position.x - 1, y: position.y);

      case 'W':
        if (position.x == Mars.planetEdgeX) {
          return Position(x: 0, y: position.y);
        }
        return Position(x: position.x + 1, y: position.y);

      default:
        return Position(x: position.x, y: position.y);
    }
  }

  @override
  String turnDirection({required String direction}) => direction;
}
