import 'package:flutter/material.dart';

Positioned botonlogin(BuildContext context) {
  return Positioned(
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
            Color.fromARGB(200, 175, 150, 5),
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
  );
}
