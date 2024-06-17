import 'package:redux/redux.dart';
import '../models/app_state.dart';
import '../reducers/reducers.dart';
import '../middleware/auth_middleware.dart';

Store<AppState> createStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState.initialState(),
    middleware: [authMiddleware],
  );
}
