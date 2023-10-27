import 'package:mars_rover/position.dart';

abstract class MoveStrategy {
  Position move({required Position position});
}
