import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kartal/kartal.dart';

class ThreeCircleDot extends StatelessWidget with BaseState {
  ThreeCircleDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.circle,
          color: colorConstants.lightShark,
          size: 7,
        ),
        context.emptySizedHeightBoxLow,
        Icon(
          Icons.circle,
          color: colorConstants.lightShark,
          size: 7,
        ),
        context.emptySizedHeightBoxLow,
        Icon(
          Icons.circle,
          color: colorConstants.lightShark,
          size: 7,
        )
      ],
    );
  }
}
