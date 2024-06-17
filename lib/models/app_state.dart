import 'package:mobile/models/auth_state.dart';

class AppState {
  final int counter;
  final AuthState authState;

  AppState({required this.counter, required this.authState});

  AppState.initialState()
      : counter = 0,
        authState = AuthState.initial();
}
