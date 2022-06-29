import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kartal/kartal.dart';

class DefaultHeadline extends StatelessWidget with BaseState {
  DefaultHeadline({Key? key, required this.text, this.align, this.color})
      : super(key: key);
  final String text;
  final TextAlign? align;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline6!.copyWith(color: color),
      textAlign: align,
    );
  }
}
