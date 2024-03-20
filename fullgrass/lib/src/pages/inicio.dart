import 'package:flutter/material.dart';
import 'package:fullgrass/src/widgets/botonlogin.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Fondo negro
            Container(color: Colors.black),
            // Imagen centrada
            GestureDetector(
              child: Center(
                child: Image.asset('assets/image/logo.png'),
              ),
            ),

            botonlogin(context),
          ],
        ),
      ),
    );
  }
}
