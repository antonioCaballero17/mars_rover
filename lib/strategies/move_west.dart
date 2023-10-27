import 'package:mars_rover/models/mars.dart';
import 'package:mars_rover/models/position.dart';
import 'package:mars_rover/strategies/move_strategy.dart';

class MoveWest implements MoveStrategy {
  var steeps = 1;

  @override
  Position move({required Position position}) {
    if (position.x == 0) {
      return Position(x: Mars.planetEdgeX, y: position.y);
    }
    return Position(x: position.x - steeps, y: position.y);
  }
}
