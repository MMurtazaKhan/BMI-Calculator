import 'package:flutter/material.dart';

class fLoatingButton extends StatelessWidget {

final IconData icon;
final Function OnPressed;

  const fLoatingButton({this.icon, this.OnPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: OnPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xffd42f52),
    );
  }
}


