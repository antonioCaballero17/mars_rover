import 'package:mars_rover/direction.dart';
import 'package:mars_rover/north.dart';
import 'package:mars_rover/sourh.dart';

class East extends Direction {
  @override
  Direction turnLeft() => North();

  @override
  Direction turnRight() => South();

  @override
  String toString() => 'E';
}
