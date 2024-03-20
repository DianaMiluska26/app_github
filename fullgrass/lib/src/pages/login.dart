import 'package:flutter/material.dart';
import 'package:fullgrass/src/widgets/FULLGRAS.dart';
import 'package:fullgrass/src/widgets/cajadeusuarios.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            FULLGRASS(),
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
                    const SizedBox(height: 80),
                    cajadeusuarios(context, icono: 'persona', dato: 'usuario'),
                    const SizedBox(height: 40), // Separación vertical
                    cajadeusuarios(context,
                        icono: 'contraseña', dato: 'contraseña'),
                    const SizedBox(height: 40), // Separación vertical
                    Positioned(
                      bottom: 50,
                      left: 16,
                      right: 16,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'Registro');
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: '¿No tienes una cuenta? ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Regístrate',
                                  style: TextStyle(
                                    color: Color.fromARGB(199, 175, 150, 5),
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40), // Separación vertical
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
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40), // Separación vertical
                    Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 40), // Separación vertical
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/facebook.png',
                            width: 52, height: 35),
                        SizedBox(width: 20),
                        Image.asset('assets/image/insta.png',
                            width: 52, height: 35),
                        SizedBox(width: 20),
                        Image.asset('assets/image/twiter.png',
                            width: 52, height: 35),
                      ],
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
