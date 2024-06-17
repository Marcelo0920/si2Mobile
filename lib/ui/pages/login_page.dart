import 'package:flutter/material.dart';
import 'package:mobile/ui/components/login_button.dart';
import 'package:mobile/ui/components/text_field.dart';

import 'package:flutter_redux/flutter_redux.dart';
import '../../models/app_state.dart';
import '../../actions/auth_actions.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //
  void signInUser() {
    print("ha iniciado sesion");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),

                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                //Bienvenido de vuelta
                const SizedBox(
                  height: 80,
                ),

                const Text(
                  "Bienvenido de vuelta!",
                  style: TextStyle(
                      color: Color.fromRGBO(97, 97, 97, 1), fontSize: 16),
                ),

                const SizedBox(height: 25),

                //email campo
                MyTextField(
                  controller: emailController,
                  hintText: "Correo electronico",
                  obscureText: false,
                ),

                //password campo
                MyTextField(
                  controller: passwordController,
                  hintText: "Clave de seguridad",
                  obscureText: true,
                ),

                //Forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Olvidaste tu contraseña?',
                          style: TextStyle(color: Colors.grey[600]))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),

                StoreConnector<AppState, Function(String, String)>(
                    converter: (store) {
                  return (useremail, password) => store.dispatch(
                      LoginRequest(useremail: useremail, password: password));
                }, builder: (context, login) {
                  return LoginButton(onTap: () {
                    final useremail = emailController.text;
                    final password = passwordController.text;
                    login(useremail, password);
                  });
                }),

                const SizedBox(
                  height: 50,
                ),

                StoreConnector<AppState, bool>(
                  converter: (store) => store.state.authState.isLoading,
                  builder: (context, isLoading) {
                    return isLoading
                        ? CircularProgressIndicator()
                        : Container();
                  },
                ),

                StoreConnector<AppState, String?>(
                  converter: (store) => store.state.authState.error,
                  builder: (context, error) {
                    return error != null
                        ? Text(error, style: TextStyle(color: Colors.red))
                        : Container();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
