import 'package:prompter_ml_2137/src/terminal.dart';

void main() {
  var terminal = Terminal();

  terminal.clearScreen();
  terminal.printPrompt('Hi there!');

  var input = terminal.collectInput();
  print('You just entered: $input');
}
