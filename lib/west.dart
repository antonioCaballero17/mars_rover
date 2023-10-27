import 'package:mars_rover/direction.dart';
import 'package:mars_rover/north.dart';
import 'package:mars_rover/sourh.dart';

class West extends Direction {
  @override
  Direction turnLeft() => South();

  @override
  Direction turnRight() => North();

  @override
  String toString() => 'W';
}
