import 'package:flutter/material.dart';

import '../../base/base_state.dart';

class UnselectedButton extends StatelessWidget with BaseState {
  UnselectedButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        primary: colorConstants.white,
        shape: const StadiumBorder(),
      ),
      child: Text(text),
    );
  }
}
