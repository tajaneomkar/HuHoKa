class Validations {
  static String? validateEmail(String? value) {
    var passNonNullValue = value ?? "";
    RegExp reg = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (passNonNullValue.isEmpty) {
      return 'Please enter some text';
    } else if (!passNonNullValue.contains("@")) {
      return ("Email should contains @");
    } else if (!reg.hasMatch(passNonNullValue)) {
      return ("Email is not valid");
    }
    return null;
  }

  static String? passwordValidation(String? value) {
    var passNonNullValue = value ?? "";
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (value.length <= 8) {
      return ("Password Must be more than 8 characters");
    } else if (!regex.hasMatch(passNonNullValue)) {
      return ("Password should contain upper,lower,digit and Special character ");
    }
    return null;
  }

  static String? nameValidation(String? value) {
    var nameNonNullValue = value ?? "";
    RegExp regExp = RegExp(r'^[a-zA-Z]*$');
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (!regExp.hasMatch(nameNonNullValue)) {
      return ("No number and special characters allowed.");
    }
    return null;
  }

  static String? addressValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  static String? mobileValidation(String? value) {
    RegExp regExp = RegExp(r'^\d{10}$');
    var phoneNonNullValue = value ?? "";

    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (!regExp.hasMatch(phoneNonNullValue)) {
      return ("Only 10 digit allowed");
    }
    return null;
  }

  static String? ageValidation(String? value) {
    RegExp regExp = RegExp(r'^\d{10}$');
    var phoneNonNullValue = value ?? "";

    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  static String? requireField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }

    return null;
  }

  static String? aadharValidation(String? value) {
    RegExp regExp = RegExp(r'^\d{12}$');
    var aadharNonNullValue = value ?? "";

    if (value == null || value.isEmpty) {
      return 'Please enter Aadhar card number';
    } else if (!regExp.hasMatch(aadharNonNullValue)) {
      return ("Aadhar card number should be a 12-digit number");
    }
    return null;
  }

  static String? panValidation(String? value) {
    RegExp regExp = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');
    var panNonNullValue = value ?? "";

    if (value == null || value.isEmpty) {
      return 'Please enter PAN card number';
    } else if (!regExp.hasMatch(panNonNullValue)) {
      return (" format should be ABCDE1234F");
    }
    return null;
  }

  static String? uanValidation(String? value) {
    RegExp regExp = RegExp(r'^\d{12}$');

    if (value == null || value.isEmpty) {
      return 'Please enter UAN number';
    } else if (!regExp.hasMatch(value)) {
      return 'UAN number should be a 12-digit number';
    }
    return null;
  }

  static String? heightValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your height';
    }
    value = value.trim();

    RegExp regExp = RegExp(r'^\d{1,3}(?:\.\d{1,2})?$');

    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid height in feet';
    }
    double? heightInFeet = double.tryParse(value);
    if (heightInFeet == null || heightInFeet <= 0 || heightInFeet > 9.84) {
      return 'Please enter a valid height between 1 and 9.84 feet';
    }

    return null;
  }

  static String? weightValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your weight';
    }
    value = value.trim();
    RegExp regExp = RegExp(r'^\d{1,3}(?:\.\d{1,2})?$');

    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid weight in kilograms';
    }

    double? weightInKg = double.tryParse(value);
    if (weightInKg == null || weightInKg <= 0 || weightInKg > 500) {
      return 'Please enter a valid weight between 1 and 500 kilograms';
    }

    return null;
  }

  static String? passportNumberValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your passport number';
    }

    value = value.trim();
    RegExp regExp = RegExp(r'^[A-Za-z0-9]{6,15}$');

    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid passport number';
    }

    return null;
  }

  static String? pfNumberValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your PF number';
    }

    value = value.trim();

    RegExp regExp = RegExp(r'^[A-Za-z0-9]{6,15}$');

    if (!regExp.hasMatch(value)) {
      return 'Please enter a valid PF number';
    }
    return null;
  }

  static String? nationalityValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your nationality';
    }

    List<String> validNationalities = [
      'American',
      'Canadian',
      'British',
      'Indian',
      'French',
    ];

    String nationalityLowerCase = value.toLowerCase();

    if (!validNationalities.contains(nationalityLowerCase)) {
      return 'Please enter a valid nationality';
    }

    return null;
  }
}
