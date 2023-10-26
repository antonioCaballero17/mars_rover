import 'package:mars_rover/position.dart';

class MarsRover {
  final int x;
  final int y;
  final String direction;

  MarsRover({
    required this.x,
    required this.y,
    required this.direction,
  });

  int? currentY;
  int? currentX;
  String? currentDirection;
  void reciveCommands(String commands) {
    for (var i = 0; i < commands.length; i++) {
      if (commands[i] == 'f') {
        _moveOnePositionForward();
      } else if (commands[i] == 'b') {
        _moveOnePositionBackward();
      } else if (commands[i] == 'l') {
        _turnLeft();
      } else if (commands[i] == 'r') {
        _turnRight();
      }
    }
  }

  void _moveOnePositionForward() {
    Position position;
    switch (direction) {
      case 'N':
        position = Position(x: x, y: y + 1);
        break;
      case 'S':
        position = Position(x: x, y: y - 1);
        break;
      case 'E':
        position = Position(x: x + 1, y: y);
        break;
      case 'W':
        position = Position(x: x - 1, y: y);
        break;
      default:
        position = Position(x: x, y: y);
        break;
    }
    currentX = position.x;
    currentY = position.y;
  }

  void _moveOnePositionBackward() {
    Position position;
    switch (direction) {
      case 'N':
        position = Position(x: x, y: y - 1);
        break;
      case 'S':
        position = Position(x: x, y: y + 1);
        break;
      case 'E':
        position = Position(x: x - 1, y: y);
        break;
      case 'W':
        position = Position(x: x + 1, y: y);
        break;
      default:
        position = Position(x: x, y: y);
        break;
    }
    currentX = position.x;
    currentY = position.y;
  }

  void _turnLeft() {
    switch (direction) {
      case 'N':
        currentDirection = 'W';
        break;
      case 'S':
        currentDirection = 'E';
        break;
      case 'E':
        currentDirection = 'N';
        break;
      case 'W':
        currentDirection = 'S';
        break;
      default:
        currentDirection = direction;
        break;
    }
  }

  void _turnRight() {
    switch (direction) {
      case 'N':
        currentDirection = 'E';
        break;
      case 'S':
        currentDirection = 'W';
        break;
      case 'E':
        currentDirection = 'S';
        break;
      case 'W':
        currentDirection = 'N';
        break;
      default:
        currentDirection = direction;
        break;
    }
  }
}
