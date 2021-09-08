class ValidationMixin {
  dynamic validateEmail(String? value) {
    if (value!.isEmpty || !value.contains("@")) {
      return 'Please Enter Your mail';
    }
    return null;
  }

  dynamic validatePassword(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    return null;
  }
}
