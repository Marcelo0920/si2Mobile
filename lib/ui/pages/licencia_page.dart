import 'package:flutter/material.dart';
import 'package:mobile/ui/components/container_decoration.dart';
import 'package:mobile/ui/components/cupertino_date_picker.dart';
import 'package:mobile/ui/components/header_component.dart';
import 'package:mobile/ui/components/licencia/animated_textfield.dart';
import 'package:mobile/ui/components/licencia/solicitar_licencia_button.dart';

class LicenciaPage extends StatelessWidget {
  final String label;
  final Widget? suffix;
  const LicenciaPage({Key? key, required this.label, required this.suffix});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HeaderComponent(),
      body: Column(
        children: [
          const ContainerDecoration(
              child: Center(
            child: Text(
              "Crea tu licencia",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )),
          const SizedBox(
            height: 25,
          ),
          const Padding(
              padding: EdgeInsets.all(24),
              child: AnimatedTextField(
                label: "Motivo",
                suffix: null,
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "¿Qué fecha estarás ausente?",
                style: TextStyle(color: Colors.deepPurple, fontSize: 16.5),
              ),
            ),
          ),
          DatePicker(),
          SizedBox(
            height: 150,
          ),
          LicenciaButton(),
        ],
      ),
    );
  }
}
