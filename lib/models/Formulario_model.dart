class Formulario {
  Formulario(
      {required this.nombre,
      required this.cedula,
      required this.correo,
      required this.movil,
      required this.direccion,
      required this.pais,
      required this.ciudad,
      required this.pregunta});

  String cedula = '';
  String nombre = '';
  String correo = '';
  String movil = '';
  String direccion = '';
  String pais = '';
  String ciudad = '';
  bool pregunta = false;
}
