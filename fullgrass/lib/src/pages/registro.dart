import 'package:flutter/material.dart';
import 'package:fullgrass/src/widgets/cajadeusuarios.dart';
import 'package:fullgrass/src/widgets/registro.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            registro(),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Container(
                width: 362,
                height: 614,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 50),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        hintText: 'Nombre completo',
                        hintStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Separación vertical
                    cajadeusuarios(context, icono: 'persona', dato: 'usuarios'),
                    const SizedBox(height: 20), // Separación vertical
                    cajadeusuarios(context,
                        icono: 'contraseña', dato: 'contraseña'),
                    const SizedBox(height: 20), // Separación vertical
                    TextFormField(
                      // Propiedad para ocultar el texto
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.white),
                        hintText: 'Numero celular',
                        hintStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Separación vertical
                    TextFormField(
                      // Propiedad para ocultar el texto
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.calendar_month, color: Colors.white),
                        hintText: 'Fecha de nacimiento',
                        hintStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Separación vertical
                    Positioned(
                      bottom: 100,
                      left: 16,
                      right: 16,
                      child: SizedBox(
                        width: 308,
                        height: 58,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Login');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(199, 175, 150, 5),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Regístrate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
