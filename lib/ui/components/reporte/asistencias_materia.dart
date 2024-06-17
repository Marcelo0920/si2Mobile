import 'package:flutter/material.dart';

class AsistenciaMateria extends StatelessWidget {
  final String Grupo, HoraEntrada, HoraSalida;
  final int Modulo, Aula;
  final VoidCallback? onPressed;

  const AsistenciaMateria(
      {Key? key,
      required this.Grupo,
      required this.Aula,
      required this.HoraEntrada,
      required this.HoraSalida,
      this.onPressed,
      required this.Modulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.2))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Grupo:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        Grupo,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Aula:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        Aula.toString(),
                        style: const TextStyle(fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Modulo:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        Modulo.toString(),
                        style: const TextStyle(fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hora Entrada:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        HoraEntrada,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hora Salida:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        HoraSalida,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
