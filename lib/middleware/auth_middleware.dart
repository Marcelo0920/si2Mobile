import 'package:redux/redux.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/app_state.dart';
import '../actions/auth_actions.dart';

void authMiddleware(
    Store<AppState> store, dynamic action, NextDispatcher next) {
  if (action is LoginRequest) {
    store.dispatch(LoginStart());
    _login(store, action);
  }
  next(action);
}

void _login(Store<AppState> store, LoginRequest action) async {
  final url = Uri.parse('https://si2parcial.onrender.com/api/auth/login');
  final response = await http.post(
    url,
    body: jsonEncode({'email': action.useremail, 'password': action.password}),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    if (responseData != null) {
      final token = responseData['token'];
      store.dispatch(LoginSuccess(token: token));
    } else {
      store.dispatch(LoginFailure(error: 'Empty response'));
    }
  } else {
    final responseData = jsonDecode(response.body);
    final error = responseData['error'] ?? 'Unknown error';
    store.dispatch(LoginFailure(error: error));
  }
}
