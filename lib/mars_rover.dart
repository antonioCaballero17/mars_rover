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
  int planetEdgeX = 10;
  int planetEdgeY = 10;

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
        if (y == planetEdgeY) {
          position = Position(x: x, y: 0);
          break;
        }
        position = Position(x: x, y: y + 1);
        break;
      case 'S':
        if (y == 0) {
          position = Position(x: x, y: planetEdgeY);
          break;
        }
        position = Position(x: x, y: y - 1);
        break;
      case 'E':
        if (x == planetEdgeX) {
          position = Position(x: 0, y: y);
          break;
        }
        position = Position(x: x + 1, y: y);
        break;
      case 'W':
        if (x == 0) {
          position = Position(x: planetEdgeX, y: y);
          break;
        }
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
        if (y == 0) {
          position = Position(x: x, y: planetEdgeY);
          break;
        }
        position = Position(x: x, y: y - 1);
        break;
      case 'S':
        if (y == planetEdgeY) {
          position = Position(x: x, y: 0);
          break;
        }
        position = Position(x: x, y: y + 1);
        break;
      case 'E':
        if (x == 0) {
          position = Position(x: planetEdgeX, y: y);
          break;
        }
        position = Position(x: x - 1, y: y);
        break;
      case 'W':
        if (x == planetEdgeX) {
          position = Position(x: 0, y: y);
          break;
        }
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
