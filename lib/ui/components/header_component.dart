import 'package:flutter/material.dart';
import 'package:mobile/ui/pages/dashboard_page.dart';

class HeaderComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardPage(),
                  ));
            },
            icon: const Icon(Icons.home),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title:
            const Text("Docentes UAGRM", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_sharp)),
        ]);
  }
}
