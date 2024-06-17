import 'package:flutter/material.dart';
import 'package:mobile/ui/components/container_decoration.dart';
import 'package:mobile/ui/components/header_component.dart';
import 'package:mobile/ui/components/reporte/materia_reporte.dart';
import 'package:mobile/ui/pages/licencia_page.dart';
import 'package:mobile/ui/pages/programacion_academica_page.dart';
import 'package:mobile/ui/pages/reporte_asistencia_page.dart';

class MisAnotaciones extends StatelessWidget {
  const MisAnotaciones({super.key});

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
                "Explora tus notas",
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
                                builder: (context) => const LicenciaPage(
                                      label: '',
                                      suffix: null,
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
                                builder: (context) =>
                                    const ProgramaAcademico()));
                      },
                    ),
                    MateriaReporte(
                      title: "Fisica III",
                      image: "assets/images/fir.png",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ReporteAsistencia()));
                      },
                    ),
                    MateriaReporte(
                      title: "Criptografia",
                      image: "assets/images/fir.png",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MisAnotaciones()));
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
