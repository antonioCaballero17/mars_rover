import 'package:mars_rover/models/mars.dart';
import 'package:mars_rover/models/position.dart';
import 'package:mars_rover/strategies/move_strategy.dart';

class MoveNorth implements MoveStrategy {
  var steeps = 1;

  @override
  Position move({required Position position}) {
    if (position.y == Mars.planetEdgeY) {
      return Position(x: position.x, y: 0);
    }
    return Position(x: position.x, y: position.y + steeps);
  }
}
