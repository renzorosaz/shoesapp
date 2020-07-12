import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {

  final double monto;

  AgregarCarritoBoton({
    this.monto
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(100)
        ),

        child: Row(
          children: [
            SizedBox(width: 20,),
            Text('\S/.$monto', style: TextStyle(fontSize:28 , fontWeight: FontWeight.bold),),
            Spacer(),
            BotonNaranja(texto: 'Agregar al Carrito'),
            SizedBox(width: 20,)
          ],
        ),
      ),
    );
  }
}