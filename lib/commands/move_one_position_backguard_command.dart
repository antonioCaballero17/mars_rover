import 'package:mars_rover/commands/command.dart';
import 'package:mars_rover/models/position.dart';
import 'package:mars_rover/strategies/move_east.dart';
import 'package:mars_rover/strategies/move_north.dart';
import 'package:mars_rover/strategies/move_south.dart';
import 'package:mars_rover/strategies/move_strategy.dart';
import 'package:mars_rover/strategies/move_west.dart';

class MoveOnePositionBackwardCommand implements Command {
  Map<String, MoveStrategy> moves = {
    'S': MoveNorth(),
    'N': MoveSouth(),
    'W': MoveEast(),
    'E': MoveWest(),
  };

  @override
  Position moveOne({required Position position, required String direction}) =>
      moves[direction]!.move(position: position);

  @override
  String turnDirection({required String direction}) => direction;
}
