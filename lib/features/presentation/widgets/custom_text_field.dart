import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;

  CustomTextField({
    @required this.hintText,
    @required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText2,
        prefixIcon: FaIcon(
          prefixIcon,
          size: 16.0,
          color: Theme.of(context).colorScheme.secondaryVariant,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 24.0),
      ),
    );
  }
}
