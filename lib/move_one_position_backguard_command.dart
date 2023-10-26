import 'package:mars_rover/command.dart';
import 'package:mars_rover/move_east.dart';
import 'package:mars_rover/move_north.dart';
import 'package:mars_rover/move_south.dart';
import 'package:mars_rover/move_strategy.dart';
import 'package:mars_rover/move_west.dart';
import 'package:mars_rover/position.dart';

class MoveOnePositionBackwardCommand implements Command {
  Map<String, MoveStrategy> moves = {
    'S': MoveSouth(),
    'N': MoveNorth(),
    'W': MoveWest(),
    'E': MoveEast(),
  };

  @override
  Position moveOne({required Position position, required String direction}) =>
      moves[direction]!.move(position: position);

  @override
  String turnDirection({required String direction}) => direction;
}
