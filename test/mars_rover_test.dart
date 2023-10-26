import 'package:mars_rover/mars_rover.dart';
import 'package:test/test.dart';

void main() {
  test('moveOnePositionForward if direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = 1;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionForward if direction is S', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'S');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = -1;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionForward if direction is E', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'E');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 1;
    final matcherY = 0;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionForward if direction is W', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'W');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = -1;
    final matcherY = 0;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionBackward if direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = -1;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('turnTheRoverLeft if direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('l');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'W';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverRight if direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('r');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'E';

    expect(currentDirection, matcherDirection);
  });
}
