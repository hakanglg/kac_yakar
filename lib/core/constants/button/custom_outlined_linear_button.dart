import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';

class CustomOutlinedLinearButton extends StatelessWidget with BaseState {
  final String text;
  final VoidCallback? onPressed;
  var isSelected;

  CustomOutlinedLinearButton(
      {super.key, required this.text, this.onPressed, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(
                color: isSelected
                    ? colorConstants.legendaryLevender
                    : colorConstants.white),
            backgroundColor:
                isSelected ? colorConstants.legendaryLevender : null),
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: colorConstants.white),
        ));
  }
}

// OutlinedButton(
//                                 onPressed: () {},
//                                 child: Text(
//                                   "manuel".toUpperCase(),
//                                   style: TextStyle(color: colorConstants.white),
//                                 ))
