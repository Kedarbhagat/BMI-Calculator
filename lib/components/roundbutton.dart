import 'package:flutter/material.dart';

class roundIconButton extends StatelessWidget {
  roundIconButton({ required this.icon , required this.onPressed}) ;
  final IconData icon  ;
  final VoidCallback onPressed ;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
      child: Icon(icon),
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        height: 56.0,
        width: 56 ,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),);
  }
}
