import 'package:flutter/material.dart';

class ItemService extends StatelessWidget {
  final String title, image;
  final VoidCallback? onPressed;

  const ItemService(
      {Key? key, required this.title, required this.image, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: 150,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
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
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1)),
                child: Image.asset(
                  image,
                  width: 40,
                  height: 40,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
