class SignupReqParams {
  final String email;
  final String password;
  final String username;

  SignupReqParams({
    required this.email,
    required this.password,
    required this.username,
  });

  // Convert the object to a JSON map
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'username': username,
    };
  }
}
