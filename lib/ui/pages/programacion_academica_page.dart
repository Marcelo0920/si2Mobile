import 'package:flutter/material.dart';
import 'package:mobile/ui/components/container_decoration.dart';
import 'package:mobile/ui/components/header_component.dart';
import 'package:mobile/ui/components/programa_academico/programa_clase.dart';

class ProgramaAcademico extends StatelessWidget {
  const ProgramaAcademico({super.key});

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
              "Programa academico",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )),
          SizedBox(
            height: 25,
          ),
          Flexible(
            child: SizedBox(
              child: ListView(
                padding: const EdgeInsets.only(
                    top: 10, left: 8, right: 8, bottom: 10),
                scrollDirection: Axis.vertical,
                children: [
                  ProgramaClase(
                      Materia: "Calculo I",
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                  ProgramaClase(
                      Materia: "Sistemas de Informacion II",
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                  ProgramaClase(
                      Materia: "Sistemas Operativos I",
                      Grupo: "SB",
                      HoraEntrada: "10:00",
                      HoraSalida: "11:30",
                      Modulo: 236,
                      Aula: 13),
                  ProgramaClase(
                      Materia: "Fisica III",
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
