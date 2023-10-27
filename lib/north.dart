import 'package:mars_rover/direction.dart';
import 'package:mars_rover/east.dart';
import 'package:mars_rover/west.dart';

class North extends Direction {
  @override
  Direction turnLeft() => West();

  @override
  Direction turnRight() => East();

  @override
  String toString() => 'N';
}
