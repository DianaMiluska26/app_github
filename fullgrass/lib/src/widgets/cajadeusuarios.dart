import 'package:flutter/material.dart';

TextFormField cajadeusuarios(BuildContext context,
    {required String icono, required String dato}) {
  IconData? customIcon;

  bool obscureTextValue = false;
  switch (icono) {
    case 'persona':
      customIcon = Icons.person;
      break;
    case 'contraseña':
      customIcon = Icons.lock;
      obscureTextValue = true;
      break;
    case 'celular':
      customIcon = Icons.phone;
      break;

    default:
      customIcon = Icons.error;
  }

  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: Icon(customIcon, color: Colors.white),
      hintText: dato,
      hintStyle: const TextStyle(color: Colors.white),
      filled: true,
      fillColor: Colors.grey[800],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    obscureText: obscureTextValue,
  );
}
