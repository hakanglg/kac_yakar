import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kartal/kartal.dart';

class DetailButton extends StatelessWidget with BaseState {
  DetailButton({
    Key? key,
    required this.title,
    required this.subtitle,
    this.trailingIcon = Icons.arrow_drop_down_circle_outlined,
    this.leadingColor,
    this.gradient,
  }) : super(key: key);

  final String title, subtitle;
  final IconData trailingIcon;
  final LinearGradient? gradient;
  final Color? leadingColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: colorConstants.lightShark,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        dense: true,
        leading: CircleAvatar(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: gradient ?? borderConstants.purplelinearGradient,
            ),
          ),
        ),
        title: Text(
          title.toCapitalized(),
          style: context.textTheme.bodyText2!.copyWith(
              color: colorConstants.white, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          subtitle.toUpperCase(),
          style: context.textTheme.subtitle2!.copyWith(fontSize: 10),
        ),
        trailing: Icon(
          trailingIcon,
          color: leadingColor ?? colorConstants.perfume,
        ),
      ),
    );
  }
}
