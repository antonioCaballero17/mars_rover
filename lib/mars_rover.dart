import 'package:mars_rover/commands/command.dart';
import 'package:mars_rover/commands/move_one_position_backguard_command.dart';
import 'package:mars_rover/commands/move_one_position_fordward_command.dart';
import 'package:mars_rover/commands/turn_left_command.dart';
import 'package:mars_rover/commands/turn_right_command.dart';
import 'package:mars_rover/models/mars.dart';
import 'package:mars_rover/models/position.dart';

class MarsRover {
  final int x;
  final int y;
  final String direction;

  MarsRover({
    required this.x,
    required this.y,
    required this.direction,
  }) {
    currentX = x;
    currentY = y;
    currentDirection = direction;
  }

  late int currentY;
  late int currentX;
  late String currentDirection;

  int planetEdgeX = Mars.planetEdgeX;
  int planetEdgeY = Mars.planetEdgeY;

  Map<String, Command> commandsMap = {
    'f': MoveOnePositionFordwardCommand(),
    'b': MoveOnePositionBackwardCommand(),
    'l': TurnLeftCommand(),
    'r': TurnRightCommand(),
  };

  void reciveCommands(String commands) {
    late Command command;
    for (var i = 0; i < commands.length; i++) {
      command = commandsMap[commands[i]]!;

      final Position newPosition = command.moveOne(
        position: Position(x: currentX, y: currentY),
        direction: currentDirection,
      );
      currentX = newPosition.x;
      currentY = newPosition.y;

      currentDirection = command.turnDirection(direction: currentDirection);
    }
  }
}
