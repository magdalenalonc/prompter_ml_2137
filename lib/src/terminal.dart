import 'dart:io';

import 'option.dart';

class Terminal {
  const Terminal();

  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  void printOptions(List<Option> options) {
    // .asMap() - convert List of options to map (key: value pairs), where keys - indexes & value - options
    // .forEach() - applie action to each key: value pair of the map.
    options.asMap().forEach((index, option) {
      stdout.writeln('[$index] - ${option.label}');
    });

    // .writeln() -> cursor to the next line
    stdout.writeln('Enter a choice:\n');
    // .write() -> cursor in the same line
    stdout.write('>');
  }

  String? collectInput() {
    // .readLineSync() waits for the user to press the enter key.
    return stdin.readLineSync();
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}
