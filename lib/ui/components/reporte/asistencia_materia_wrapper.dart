import 'package:flutter/material.dart';
import 'package:mobile/ui/components/container_decoration.dart';
import 'package:mobile/ui/components/header_component.dart';
import 'package:mobile/ui/components/reporte/asistencias_materia.dart';

class AsistenciasClase extends StatelessWidget {
  final String Materia;

  const AsistenciasClase({Key? key, required this.Materia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HeaderComponent(),
      body: Column(
        children: [
          ContainerDecoration(
              child: Center(
            child: Text(
              Materia,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )),
          const SizedBox(
            height: 25,
          ),
          Flexible(
            child: SizedBox(
              child: ListView(
                padding: const EdgeInsets.only(
                    top: 10, left: 8, right: 8, bottom: 10),
                scrollDirection: Axis.vertical,
                children: [
                  AsistenciaMateria(
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                  AsistenciaMateria(
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                  AsistenciaMateria(
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                  AsistenciaMateria(
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
