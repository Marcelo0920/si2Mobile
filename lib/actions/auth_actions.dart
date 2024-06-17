class LoginRequest {
  final String useremail;
  final String password;

  LoginRequest({required this.useremail, required this.password});
}

class LoginStart {}

class LoginSuccess {
  final String token;

  LoginSuccess({required this.token});
}

class LoginFailure {
  final String error;

  LoginFailure({required this.error});
}
