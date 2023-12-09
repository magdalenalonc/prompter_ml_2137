import 'package:prompter_ml_2137/src/prompter.dart';
import 'package:prompter_ml_2137/src/option.dart';

void main() {
  final options = [
    Option('I want red', '#f00'),
    Option('I want blue', '#00f'),
  ];

  final prompter = Prompter();
  print(prompter.askBinary('Do you like Dart?'));
}
