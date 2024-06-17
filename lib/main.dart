import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/ui/pages/dashboard_page.dart';
import 'ui/pages/login_page.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'models/app_state.dart';
import 'store/store.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  final Store<AppState> store = createStore();
  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
            title: 'UAGRM DOCENTES',
            debugShowCheckedModeBanner: false,
            home: StoreConnector<AppState, bool>(
                converter: (store) => store.state.authState.isAuthenticated,
                builder: (context, isAuthenticated) {
                  return isAuthenticated ? DashboardPage() : LoginPage();
                })));
  }
}
