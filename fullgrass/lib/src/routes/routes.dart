import 'package:flutter/material.dart';
import 'package:fullgrass/src/pages/inicio.dart';
import 'package:fullgrass/src/pages/login.dart';
import 'package:fullgrass/src/pages/registro.dart';

Map<String, WidgetBuilder> rutas = {
  'Inicio': (context) => const Inicio(),
  'Login': (context) => const Login(), 
  'Registro': (context) => const Registro(), 
};