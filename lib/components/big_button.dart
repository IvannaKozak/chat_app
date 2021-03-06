import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  BigButton({@required this.colour, this.name, this.onTap});

  final Color colour;
  final String name;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onTap();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            name,
          ),
        ),
      ),
    );
  }
}