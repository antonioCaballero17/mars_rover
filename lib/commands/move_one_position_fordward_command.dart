import 'package:mars_rover/commands/command.dart';
import 'package:mars_rover/direction.dart';
import 'package:mars_rover/models/position.dart';
import 'package:mars_rover/strategies/move_east.dart';
import 'package:mars_rover/strategies/move_north.dart';
import 'package:mars_rover/strategies/move_south.dart';
import 'package:mars_rover/strategies/move_strategy.dart';
import 'package:mars_rover/strategies/move_west.dart';

class MoveOnePositionFordwardCommand implements Command {
  Map<String, MoveStrategy> moves = {
    'N': MoveNorth(),
    'S': MoveSouth(),
    'E': MoveEast(),
    'W': MoveWest(),
  };

  @override
  Position moveOne({required Position position, required String direction}) =>
      moves[direction]!.move(position: position);

  @override
  Direction turnDirection({required Direction direction}) => direction;
}
