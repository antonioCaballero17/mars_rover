import 'package:mars_rover/mars_rover.dart';
import 'package:test/test.dart';

void main() {
  int planetEdgeY = 10;
  int planetEdgeX = 10;
  test('moveOnePositionForward when direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = 1;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionForward when direction is S', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'S');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = 10;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionForward when direction is E', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'E');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 1;
    final matcherY = 0;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionForward when direction is W', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'W');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 10;
    final matcherY = 0;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionBackward when direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = 10;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionBackward when direction is S', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'S');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 0;
    final matcherY = 1;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionBackward when direction is E', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'E');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 10;
    final matcherY = 0;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('moveOnePositionBackward when direction is W', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'W');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final currentY = marsRover.currentY;
    final matcherX = 1;
    final matcherY = 0;

    expect(currentY, matcherY);
    expect(currentX, matcherX);
  });

  test('turnTheRoverLeft when direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('l');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'W';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverLeft when direction is W', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'W');

    marsRover.reciveCommands('l');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'S';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverLeft when direction is S', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'S');

    marsRover.reciveCommands('l');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'E';

    expect(currentDirection, matcherDirection);
  });
  test('turnTheRoverLeft when direction is E', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'E');

    marsRover.reciveCommands('l');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'N';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverRight when direction is N', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('r');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'E';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverRight when direction is E', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'E');

    marsRover.reciveCommands('r');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'S';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverRight when direction is S', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'S');

    marsRover.reciveCommands('r');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'W';

    expect(currentDirection, matcherDirection);
  });

  test('turnTheRoverRight when direction is W', () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'W');

    marsRover.reciveCommands('r');

    final currentDirection = marsRover.currentDirection;
    final matcherDirection = 'N';

    expect(currentDirection, matcherDirection);
  });

  test(
      'Should return planetEdgeY when y:0 and move backward and direction is N',
      () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'N');

    marsRover.reciveCommands('b');

    final currentY = marsRover.currentY;
    final matcherY = 10;

    expect(currentY, matcherY);
  });

  test(
      'Should return planetEdgeX when x:0 and move backward and direction is E',
      () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'E');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final matcherX = 10;

    expect(currentX, matcherX);
  });

  test(
      'Should return 0 when y:planetEdgeY and move backward and direction is S',
      () {
    final marsRover = MarsRover(x: 0, y: planetEdgeY, direction: 'S');

    marsRover.reciveCommands('b');

    final currentY = marsRover.currentY;
    final matcherY = 0;

    expect(currentY, matcherY);
  });

  test(
      'Should return 0 when x:planetEdgeX and move backward and direction is W',
      () {
    final marsRover = MarsRover(x: planetEdgeX, y: 0, direction: 'W');

    marsRover.reciveCommands('b');

    final currentX = marsRover.currentX;
    final matcherX = 0;

    expect(currentX, matcherX);
  });

  test(
      'Should return planetEdgeY when y:0 and move fordward and direction is S',
      () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'S');

    marsRover.reciveCommands('f');

    final currentY = marsRover.currentY;
    final matcherY = 10;

    expect(currentY, matcherY);
  });

  test(
      'Should return planetEdgeX when x:0 and move fordward and direction is W',
      () {
    final marsRover = MarsRover(x: 0, y: 0, direction: 'W');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final matcherX = 10;

    expect(currentX, matcherX);
  });

  test(
      'Should return 0 when y:planetEdgeY and move fordward and direction is N',
      () {
    final marsRover = MarsRover(x: 0, y: planetEdgeY, direction: 'N');

    marsRover.reciveCommands('f');

    final currentY = marsRover.currentY;
    final matcherY = 0;

    expect(currentY, matcherY);
  });

  test(
      'Should return 0 when x:planetEdgeX and move fordward and direction is E',
      () {
    final marsRover = MarsRover(x: planetEdgeX, y: 0, direction: 'E');

    marsRover.reciveCommands('f');

    final currentX = marsRover.currentX;
    final matcherX = 0;

    expect(currentX, matcherX);
  });
  test(
      'Should return 0 when x:planetEdgeX and move fordward and direction is E',
      () {
    final marsRover = MarsRover(x: planetEdgeX, y: 0, direction: 'E');

    marsRover.reciveCommands('fflbrffl');

    final currentX = marsRover.currentX;
    final matcherX = 3;

    final currentY = marsRover.currentY;
    final matcherY = 10;

    final currentDirection = marsRover.currentDirection;
    final directionMarcher = 'N';

    expect(currentX, matcherX);
    expect(currentY, matcherY);
    expect(currentDirection, directionMarcher);
  });
}
