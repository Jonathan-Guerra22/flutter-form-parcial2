import 'package:flutter/material.dart';

class FormularioProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cedula = '';
  String nombre = '';
  String correo = '';
  String movil = '';
  String direccion = '';
  String pais = '';
  String ciudad = '';
  bool pregunta = false;
}
