import 'package:flutter/material.dart';


class ZapatoSizePreview extends StatelessWidget {
  
  final bool fullScreen;
  
  const ZapatoSizePreview({
    this.fullScreen = false
  });

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding:EdgeInsets.symmetric(
        horizontal:(this.fullScreen) ? 2 : 4, 
        vertical: (this.fullScreen) ? 5 : 30,
        ),
        child: Container(
        width: double.infinity,
        height:500,
          decoration: BoxDecoration(
          color:Color(0xffFFCF53),
          borderRadius: 
          (!this.fullScreen) 
          ? BorderRadius.circular(20) 
          : BorderRadius.only(bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
            ),
        ),
        child:Column(
          children: [
            _ZapataloConSombra(),
            
            
            if (!this.fullScreen)
            _ZapatoTallas(),
          ],
        )
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(numero: 36.5),
          _TallaZapatoCaja(numero: 37),
          _TallaZapatoCaja(numero: 38.5),
          _TallaZapatoCaja(numero: 39),
          _TallaZapatoCaja(numero: 40.5)
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {

  final double numero;
  const _TallaZapatoCaja({
    this.numero,
  });



  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      child: Text('${numero.toString().replaceAll('.0', '')}',
      style: TextStyle(
        color:(this.numero ==39)  ? Colors.white : Color(0xffF1A23A) ,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      ),
      width:45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.numero ==39)  ? Color(0xffF1A23A) :Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if(this.numero ==39)
         BoxShadow( 
           color:Color(0xffF1A23A),
           blurRadius: 20,
           offset: Offset(0,5)
         )
        ]
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
          Positioned(
            bottom: 15,
            child: _ZapatoSombra()
          ),
          Image(
            image: AssetImage('assets/amarillo.png'),
          )
        ],
      ),
    );

  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
    width:300,
    height: 170,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          color:Color(0xffEAA14E),
         blurRadius: 40
        )
      ]
    ),
      );
  }
}