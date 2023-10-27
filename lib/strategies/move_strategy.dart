import 'package:mars_rover/models/position.dart';

abstract class MoveStrategy {
  Position move({required Position position});
}
