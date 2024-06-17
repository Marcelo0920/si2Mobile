import 'package:flutter/material.dart';

class LicenciaButton extends StatefulWidget {
  @override
  _LicenciaButtonState createState() => _LicenciaButtonState();
}

class _LicenciaButtonState extends State<LicenciaButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                print("Button pressed");
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  backgroundColor: Colors.blueAccent),
              child: const Text(
                "Solicitar Licencia",
                style: TextStyle(fontSize: 16, color: Colors.white),
              )),
        ],
      ),
    );
  }
}
