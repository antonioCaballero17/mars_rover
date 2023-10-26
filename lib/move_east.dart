import 'package:mars_rover/mars.dart';
import 'package:mars_rover/move_strategy.dart';
import 'package:mars_rover/position.dart';

class MoveEast implements MoveStrategy {
  var steeps = 1;

  @override
  Position move({required Position position}) {
    if (position.x == 0) {
      return Position(x: Mars.planetEdgeX, y: position.y);
    }
    return Position(x: position.x - steeps, y: position.y);
  }
}
