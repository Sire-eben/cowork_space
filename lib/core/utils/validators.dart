enum PasswordValidationError {
  empty(
      "Password must be 8+ characters with an uppercase letter, a number,\n and a special character."),
  tooShort('Password must be at least 8 characters'),
  noCapitalLetter('Password must contain at least an uppercase character'),
  noNumber('Password must contain at least a number'),
  notTheSame('Passwords do not match'),
  specialCharacter('Password must contain at least a special character');

  const PasswordValidationError(this.errorText);

  final String errorText;
}

class Validators {
  static bool isNumeric(String number) {
    return double.tryParse(number) != null;
  }

  static String? Function(String?) validatePhoneNumber({int maxLength = 10}) {
    return (String? value) {
      value = harmonize(value);
      final regex = RegExp(r"^[0-9]");
      if (value.startsWith("0")) {
        return "please remove leading '0' from number";
      }
      if (!isNumeric(value)) {
        return 'Enter valid phone number';
      }
      if (value.isEmpty || !regex.hasMatch(value)) {
        return "Please enter a valid phone number";
      }
      if (value.length < maxLength) {
        return "Phone number must be an $maxLength characters digits";
      }
      if (value.length > maxLength) {
        return "Phone number can not be more than $maxLength digits";
      }
      return null;
    };
  }

  static String? validateEmail(String? value) {
    const Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final regex = RegExp(emailPattern.toString());
    value = harmonize(value);
    if (value.isEmpty || !regex.hasMatch(value)) {
      return "Invalid Email";
    }
    return null;
  }

  static String? Function(String?) validateString(
      {int minLength = 1, int? maxLength, String? error}) {
    return (String? value) {
      value = harmonize(value);

      if (value.isEmpty && value.length < minLength) {
        return error ?? "Field is required.";
      }

      if (maxLength != null) {
        if (minLength == maxLength && value.length != minLength) {
          return "Field must be $minLength characters";
        }
        if (value.length < minLength || value.length > maxLength) {
          return "Field must be $minLength-$maxLength characters";
        }
      }
      if (value.length < minLength) {
        return "Field must have a minimum of $minLength characters";
      }
      if (maxLength != null && value.length > maxLength) {
        return "Field must not have more than $maxLength characters";
      }
      return null;
    };
  }

  static String? Function(String?) validatePassword({int minLength = 8}) {
    return (String? value) {
      // final value = this;
      if (value == null) {
        return PasswordValidationError.empty.errorText;
      } else if (value.isEmpty) {
        return PasswordValidationError.empty.errorText;
      } else if (value.length < 8) {
        return PasswordValidationError.tooShort.errorText;
      } else if (!value.contains(RegExp('[A-Z]'))) {
        return PasswordValidationError.noCapitalLetter.errorText;
      } else if (!value.contains(RegExp('[0-9]'))) {
        return PasswordValidationError.noNumber.errorText;
      } else if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        return PasswordValidationError.specialCharacter.errorText;
      }
      return null;
    };
  }
  static String? Function(String?) validateConfirmPassword(String password) {
    return (String? value) {
      // final value = this;
      if (value == null) {
        return PasswordValidationError.empty.errorText;
      } else if (value.isEmpty) {
        return PasswordValidationError.empty.errorText;
      } else if (value != password) {
        return PasswordValidationError.notTheSame.errorText;
      }
      return null;
    };
  }

  static String harmonize(String? value) =>
      value == null ? "" : value.replaceAll(",", "").trim();
}
