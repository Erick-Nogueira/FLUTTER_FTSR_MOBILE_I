import 'package:app_interesses/screens/galeria.dart';
import 'package:app_interesses/screens/inicio.dart';
import 'package:app_interesses/screens/perfil.dart';
import 'package:flutter/material.dart';

class Esqueleto extends StatefulWidget{
  
  @override
  State<Esqueleto> createState() => _EsqueletoState();
}

class _EsqueletoState extends State<Esqueleto> {
  int _indiceAtual = 0;
  
  final List<Widget> _telas = [
    Inicio(),
    Galeria(),
    Perfil(),
  ];

  void _aoTocarNaAba(int indice) {
    setState(() {
      _indiceAtual = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: _aoTocarNaAba,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'Galeria'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil'
            )
          ]
        ),
    );
  }
}