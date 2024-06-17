import 'package:flutter/material.dart';

class AsistenciaButton extends StatelessWidget {
  const AsistenciaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15)),
              icon: const Icon(
                Icons.check,
                size: 30,
              ),
              label: const Text(
                'Marcar Asistencia',
                style: TextStyle(fontSize: 17),
              )),
        ),
      ],
    );
  }
}
