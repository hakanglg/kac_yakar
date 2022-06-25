import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class DefaultSubtitle extends StatelessWidget {
  const DefaultSubtitle({Key? key, required this.text, this.align})
      : super(key: key);
  final String text;
  final TextAlign? align;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.subtitle2!,
      textAlign: align,
    );
  }
}
