import 'package:flutter/material.dart';
import 'package:parcial2/providers/formulario_provider.dart';
import 'package:provider/provider.dart';

class FormularioPage extends StatelessWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(child: _FormularioForm())),
          MaterialButton(
            onPressed: () => Navigator.popAndPushNamed(context, 'resultado'),
            child: Container(child: Text('Capturar Datos y Mostrar')),
            color: Colors.green,
          )
        ],
      )),
    );
  }
}

class _FormularioForm extends StatefulWidget {
  @override
  State<_FormularioForm> createState() => _FormularioFormState();
}

class _FormularioFormState extends State<_FormularioForm> {
  bool dropdownValue = false;

  @override
  Widget build(BuildContext context) {
    final formularioForm = Provider.of<FormularioProvider>(context);
    return Form(
      key: formularioForm.formKey,
      child: Column(children: [
        SizedBox(
          height: 60,
        ),
        TextFormField(
            initialValue: formularioForm.cedula,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Cedula',
              hintText: 'Cedula',
            ),
            onChanged: (value) => formularioForm.cedula = value),
        TextFormField(
            initialValue: formularioForm.nombre,
            autocorrect: false,
            keyboardType: TextInputType.name,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              labelText: 'Nombre',
              hintText: 'Nombre',
            ),
            onChanged: (value) => formularioForm.nombre = value),
        TextFormField(
          initialValue: formularioForm.correo,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            labelText: 'Correo',
            hintText: 'Correo',
          ),
          onChanged: (value) => formularioForm.correo = value,
        ),
        TextFormField(
            initialValue: formularioForm.movil,
            autocorrect: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Movil',
              hintText: 'Movil',
            ),
            onChanged: (value) => formularioForm.movil = value),
        TextFormField(
            initialValue: formularioForm.direccion,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Direccion',
              hintText: 'Direccion',
            ),
            onChanged: (value) => formularioForm.direccion = value),
        TextFormField(
            initialValue: formularioForm.pais,
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Pais',
              hintText: 'Pais',
            ),
            onChanged: (value) => formularioForm.pais = value),
        TextFormField(
            initialValue: formularioForm.ciudad,
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Ciudad',
              hintText: 'Ciudad',
            ),
            onChanged: (value) => formularioForm.ciudad = value),
        SizedBox(
          height: 30,
        ),
        Text("¿Le gustan Los colores claros?"),
        DropdownButton<bool>(
          value: formularioForm.pregunta,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (bool? newValue) {
            setState(() {
              dropdownValue = newValue!;
              formularioForm.pregunta = newValue;
            });
          },
          items: <bool>[true, false].map<DropdownMenuItem<bool>>((bool value) {
            return DropdownMenuItem<bool>(
              value: value,
              child: value == true ? Text('Verdadero') : Text('Falso'),
            );
          }).toList(),
        ),
        SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
