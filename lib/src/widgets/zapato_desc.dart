import 'package:flutter/material.dart';

class ZapatoDescripcion extends StatelessWidget {
  
  final String titulo;
  final String descripcion;

  const ZapatoDescripcion({
  @required this.titulo,
  @required this.descripcion
  });

  @override
  Widget build(BuildContext context) {
    return Container(      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.titulo,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          Text(this.descripcion,
          style: TextStyle(color:Colors.black54,height: 2),
          ),
        ],
      ),
    );
  }
}