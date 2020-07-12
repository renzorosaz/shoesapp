import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {

final String texto;

const BotonNaranja({
  @required this.texto
});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
     width: 160,
     height: 50,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(100),
       color:Colors.orange
     ),
    child: Text('$texto', style: TextStyle(color:Colors.white)),
    );
  }
}