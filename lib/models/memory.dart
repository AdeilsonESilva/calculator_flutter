class Memory {
  String _value = '0';

  void applyCommand(String command) {
    if (command == 'AC') return _allClear();

    _value += command;
  }

  _allClear() => _value = '0';

  String get value => _value;
}
