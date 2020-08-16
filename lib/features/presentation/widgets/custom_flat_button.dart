import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final bool active;
  final String label;
  final VoidCallback onPressed;

  CustomFlatButton({
    @required this.active,
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: active
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2.0,
                ),
              ),
            )
          : BoxDecoration(),
      child: RawMaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        constraints: BoxConstraints(),
        padding: EdgeInsets.only(bottom: 1.0),
        onPressed: onPressed,
        child: Text(
          label,
          style: active
              ? Theme.of(context).textTheme.headline5
              : Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
