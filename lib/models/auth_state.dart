class AuthState {
  final bool isAuthenticated;
  final String? token;
  final String? error;
  final bool isLoading;

  AuthState(
      {required this.isAuthenticated,
      this.error,
      this.token,
      required this.isLoading});

  factory AuthState.initial() {
    return AuthState(
        isAuthenticated: false, token: null, error: null, isLoading: false);
  }

  AuthState copyWith(
      {bool? isAuthenticated, String? token, String? error, bool? isLoading}) {
    return AuthState(
        isAuthenticated: isAuthenticated ?? this.isAuthenticated,
        token: token ?? this.token,
        error: error ?? this.error,
        isLoading: isLoading ?? this.isLoading);
  }
}
