class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String get password => _password ?? '';
  set password(String value) => _password = value;

  bool isValid() {
    final p = _password;
    if (p == null) return false;
    if (p.length < 8 || p.length > 16) return false;
    if (!p.contains(RegExp(r'[A-Z]'))) return false;
    if (!p.contains(RegExp(r'[a-z]'))) return false;
    if (!p.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password ?? ''}';
  }
}
