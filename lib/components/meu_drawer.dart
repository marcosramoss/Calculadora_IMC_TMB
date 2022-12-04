import 'package:flutter/material.dart';
import 'package:imctmbcalc/constants/constantes.dart';
import 'package:imctmbcalc/pages/home_page.dart';
import 'package:imctmbcalc/pages/registro_page.dart';

class MeuDrawer extends StatelessWidget {
  const MeuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Color(corClaraPadrao),
                  radius: 50,
                  child: Text(
                    'U',
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(corPadrao),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'User',
                  style: TextStyle(fontSize: 20, color: Color(corClaraPadrao)),
                )
              ]),
        ),
        const SizedBox(height: 20),
        ListTile(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          },
          leading: const Icon(
            Icons.calculate,
            size: 35,
          ),
          title: const Text(
            'Calculadora',
            style: TextStyle(fontSize: 20, color: Color(corPadrao)),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResgistroPage(),
                ));
          },
          leading: const Icon(
            Icons.view_list_rounded,
            size: 35,
          ),
          title: const Text(
            'Registros',
            style: TextStyle(fontSize: 20, color: Color(corPadrao)),
          ),
        ),
        // ListTile(
        //   onTap: () {},
        //   leading: const Icon(
        //     Icons.info,
        //     size: 35,
        //   ),
        //   title: const Text(
        //     'Sobre',
        //     style: TextStyle(fontSize: 20, color: Color(corPadrao)),
        //   ),
        // ),
      ]),
    );
  }
}
