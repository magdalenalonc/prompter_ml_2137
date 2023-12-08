import 'package:prompter_ml_2137/src/terminal.dart';
import 'package:prompter_ml_2137/src/option.dart';

void main() {
  var terminal = Terminal();
  var options = [
    Option('I want red', '#f00'),
    Option('I want blue', '#00f'),
  ];

  terminal.printOptions(options);

  var response = terminal.collectInput();

  print(response);
}
