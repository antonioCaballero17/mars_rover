import 'package:mars_rover/mars.dart';
import 'package:mars_rover/move_strategy.dart';
import 'package:mars_rover/position.dart';

class MoveNorth implements MoveStrategy {
  var steeps = 1;

  @override
  Position move({required Position position}) {
    if (position.y == 0) {
      return Position(x: position.x, y: Mars.planetEdgeY);
    }
    return Position(x: position.x, y: position.y - steeps);
  }
}
