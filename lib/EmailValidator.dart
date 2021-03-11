class EmailValidator {
  static bool isEmailValid(String email) {
    return emailError(email).isEmpty;
  }

  static String emailError(String email) {
    if (email.length < 6) return '  ';
    if (email.length < 8) return 'Email must be at least 8 chars';
    if (email.indexOf('@') == -1) return 'Email must contain an @ symbol';

    int dotIndex = email.indexOf('.');
    if ((dotIndex == -1) ||
        ((dotIndex >= 0) && (email.substring(dotIndex + 1).length < 2))) {
      return 'Email should contain a domain (gmail.com, hotmail.com, etc)';
    }

    if (email.indexOf(' ') != -1) return 'Email cannot contain spaces';

    return '';
  }
}
