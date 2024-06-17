import 'package:mobile/actions/auth_actions.dart';
import 'package:mobile/models/auth_state.dart';

AuthState authReducer(AuthState state, dynamic action) {
  switch (action.runtimeType) {
    case LoginStart:
      return state.copyWith(isLoading: true, error: null);

    case LoginSuccess:
      return state.copyWith(
          isAuthenticated: true,
          token: (action as LoginSuccess).token,
          isLoading: false,
          error: null);

    case LoginFailure:
      return state.copyWith(
          isAuthenticated: false,
          token: null,
          isLoading: false,
          error: (action as LoginFailure).error);

    default:
      return state;
  }
}
