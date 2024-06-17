import 'package:flutter/material.dart';
import 'package:mobile/ui/components/container_decoration.dart';
import 'package:mobile/ui/components/header_component.dart';
import 'package:mobile/ui/components/reporte/asistencia_materia_wrapper.dart';
import 'package:mobile/ui/components/reporte/materia_reporte.dart';

class ReporteAsistencia extends StatelessWidget {
  const ReporteAsistencia({super.key});

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
                "Visualiza tus asistencias",
                style: TextStyle(
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
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(
                      top: 10, left: 8, right: 8, bottom: 10),
                  children: [
                    MateriaReporte(
                      title: "Calculo I",
                      image: "assets/images/fir.png",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Flexible(
                                      child: const AsistenciasClase(
                                        Materia: "Calculo I",
                                      ),
                                    )));
                      },
                    ),
                    MateriaReporte(
                      title: "Sistemas de Informacion II",
                      image: "assets/images/fir.png",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Flexible(
                                      child: const AsistenciasClase(
                                          Materia:
                                              "Sistemas de Informacion II"),
                                    )));
                      },
                    ),
                    MateriaReporte(
                      title: "Fisica III",
                      image: "assets/images/fir.png",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Flexible(
                                      child: const AsistenciasClase(
                                          Materia: "Fisica III"),
                                    )));
                      },
                    ),
                    MateriaReporte(
                      title: "Criptografia",
                      image: "assets/images/fir.png",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Flexible(
                                      child: const AsistenciasClase(
                                          Materia: "Criptografia I"),
                                    )));
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
