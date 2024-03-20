import 'package:flutter/material.dart';

Positioned registro() {
  return const Positioned(
    top: 50,
    left: 0,
    right: 0,
    child: Center(
      child: Text(
        'FULLGRASS',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 64,
        ),
      ),
    ),
  );
}
