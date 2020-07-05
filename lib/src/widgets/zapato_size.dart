import 'package:flutter/material.dart';


class ZapatoSizePreview extends StatelessWidget {
  
  
  const ZapatoSizePreview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:EdgeInsets.symmetric(horizontal:30, vertical: 30),
        child: Container(
        width: double.infinity,
        height: 400,
          decoration: BoxDecoration(
          color:Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child:Column(
          children: [
            _ZapataloConSombra()
            //zapato
            //tallas
          ],
        )
      ),
    );
  }
}


class _ZapataloConSombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Image(
            image: AssetImage('assets/mancuernas.png'),
          )
        ],
      ),
    );

  }
}