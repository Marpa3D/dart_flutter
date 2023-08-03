// Игра "Камень, ножницы, бумага"
import 'dart:io';
import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}

void main() {
  // Создаем генератор случайных чисел
  final rnd = Random();
  while (true) {
    // игровой цикл
    stdout.write('Добро пожаловать в игру "Камень, ножницы, бумага" (r/p/s)! ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final rand = rnd.nextInt(3);
      final aiMove = Move.values[rand];
      if (playerMove == aiMove) {
        print('Ничья!');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print('Вы победили!!!');
      } else {
        print('Попробуй еще раз!');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Введены неверные данные');
    }
  }
}
