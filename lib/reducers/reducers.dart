import 'package:mobile/models/app_state.dart';
import 'package:mobile/reducers/auth_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      counter: counterReducer(state.counter, action),
      authState: authReducer(state.authState, action));
}

int counterReducer(int counter, dynamic action) {
  //Reducer for counter logic
  return counter;
}
