import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kac_yakar/core/components/column/my_column.dart';
import 'package:kac_yakar/core/components/row/my_row.dart';

class WhiteBackground extends StatelessWidget with BaseState {
  WhiteBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: borderConstants.radiusAllLow,
        color: colorConstants.white,
      ),
      child: MyRow(child: MyColumn(child: child)),
    );
  }
}
