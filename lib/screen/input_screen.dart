// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputsSreen extends StatefulWidget {
  const InputsSreen({super.key});

  @override
  State<InputsSreen> createState() => _InputsSreenState();
}

class _InputsSreenState extends State<InputsSreen> {
  String userName = '';
  String password = '';
  String email = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de dato'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0,
          ),
          children: [
            _entradaUserName(),
            const Divider(),
            _entradaPassword(),
            const Divider(),
          ]),
    );
  }

  Widget _entradaUserName() {
    return TextField(
        autofocus: true, //un textfield por ventana puede tener esta propiedad,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          labelText: 'User Name',
          hintText: 'escribe aqui tu nombre de usuario',
          helperText: 'escribe tu nombre de usuario',
          // icon: const Icon(Icons.person),
          prefixIcon: const Icon(Icons.person),
          suffixIcon: const Icon(Icons.edit),
          suffixIconColor: Colors.deepOrange,
        ),
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
        cursorColor: Colors.greenAccent,
        cursorRadius: const Radius.circular(16.0),
        cursorWidth: 16.0,
        maxLines: 3,
        onChanged: (value) {
          userName = value;
          print(userName);
        });
  }

  Widget _entradaPassword() {
    return TextField(
        //un textfield por ventana puede tener esta propiedad,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            labelText: 'Password',
            hintText: 'escribe aqui tu contraseña',
            helperText: 'escribe tu contraseña',
            // icon: const Icon(Icons.person),
            prefixIcon: const Icon(Icons.key),
            suffixIcon: const Icon(Icons.edit_attributes),
            suffixIconColor: Colors.deepOrange,
            counter: Text('caracteres: {password.lengh}')),
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
        cursorColor: Colors.greenAccent,
        cursorRadius: const Radius.circular(16.0),
        cursorWidth: 16.0,
        obscureText: true,
        maxLength: 8,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          password = value;
          print(password);
        });
  }
}
