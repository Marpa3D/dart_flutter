enum Operation {
  plus,
  minus,
  multiply,
  divide,
}

void main() {
  const a = 4;
  const b = 4;
  const op = Operation.plus;

  switch (op) {
    case Operation.plus:
      print('Сложение $a + $b = ${a + b}');
      break;
    case Operation.minus:
      print('$a - $b = ${a - b}');
  }
}
