import 'package:flutter/material.dart';
import 'package:parcial2/providers/formulario_provider.dart';
import 'package:provider/provider.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Container(child: _ResultadoForm())),
          MaterialButton(
            onPressed: () => Navigator.popAndPushNamed(context, 'formulario'),
            child: Container(child: Text('Capturar Datos y Mostrar')),
            color: Colors.green,
          )
        ],
      )),
    );
  }
}

class _ResultadoForm extends StatelessWidget {
  const _ResultadoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formularioForm = Provider.of<FormularioProvider>(context);
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
                title: Text(formularioForm.cedula),
                subtitle: Text("Cedula "),
                leading: Icon(Icons.assignment_ind)),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: Text(formularioForm.nombre),
              subtitle: Text("Nombre "),
              leading: Icon(Icons.person),
            ),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: Text(formularioForm.correo),
              subtitle: Text("Correo "),
              leading: Icon(Icons.email),
            ),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: Text(formularioForm.movil),
              subtitle: Text("Movil "),
              leading: Icon(Icons.phone_android),
            ),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: Text(formularioForm.direccion),
              subtitle: Text("Direccion "),
              leading: Icon(Icons.assistant_direction),
            ),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: Text(formularioForm.pais),
              subtitle: Text("Pais "),
              leading: Icon(Icons.place),
            ),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: Text(formularioForm.ciudad),
              subtitle: Text("Ciudad "),
              leading: Icon(Icons.place),
            ),
          ),
          Card(
            color:
                formularioForm.pregunta == true ? Colors.amber : Colors.brown,
            child: ListTile(
              title: formularioForm.pregunta == true
                  ? Text('Verdadero')
                  : Text('Falso'),
              subtitle: Text("Pregunta"),
              leading: Icon(Icons.question_answer),
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
