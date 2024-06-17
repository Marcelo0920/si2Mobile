import 'package:flutter/material.dart';
import 'package:mobile/ui/components/asistencia_button.dart';
import 'package:mobile/ui/components/container_decoration.dart';
import 'package:mobile/ui/components/header_component.dart';
import 'package:mobile/ui/components/item_news.dart';
import 'package:mobile/ui/components/item_service.dart';
import 'package:mobile/ui/pages/licencia_page.dart';
import 'package:mobile/ui/pages/mis_anotaciones_page.dart';
import 'package:mobile/ui/pages/programacion_academica_page.dart';
import 'package:mobile/ui/pages/reporte_asistencia_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HeaderComponent(),
        body: Column(
          children: [
            ContainerDecoration(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      letterSpacing: 1, color: Colors.white),
                              children: const [
                            TextSpan(text: "Hola "),
                            TextSpan(
                                text: "Marcelo",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white70, width: 2)),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.JPG'),
                          radius: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Asistencia continua",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Con el nuevo sistema podrá marcar su asistencia sin tener que firmar o declarar el aula que le toca pasar clases",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w300,
                        height: 1.5),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AsistenciaButton(),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                ListTile(
                  title: Text(
                    "¿Qué quieres hacer hoy?",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    padding: const EdgeInsets.only(
                        top: 5, left: 5, right: 5, bottom: 6),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemService(
                        title: "Marcar\nLicencia",
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
                      ItemService(
                        title: "Programacion\nAcadémica",
                        image: "assets/images/fir.png",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProgramaAcademico()));
                        },
                      ),
                      ItemService(
                        title: "Reportes de\nAsistencia",
                        image: "assets/images/fir.png",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ReporteAsistencia()));
                        },
                      ),
                      ItemService(
                        title: "Mis\nAnotaciones",
                        image: "assets/images/fir.png",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MisAnotaciones()));
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text("Avisos nuevos",
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                const Column(
                  children: [
                    ItemsNewsFeed(
                        title: "Se anunca horario continuo por feriado",
                        image: "assets/images/news1.jpg"),
                    ItemsNewsFeed(
                        title: "Se anunca horario continuo por feriado",
                        image: "assets/images/news2.jpg"),
                  ],
                )
              ],
            ))
          ],
        ));
  }
}
