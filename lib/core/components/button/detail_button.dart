import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../product/components/text/default_headline.dart';
import '../../base/base_state.dart';

class DetailButton extends StatelessWidget with BaseState {
  DetailButton({
    Key? key,
    required this.title,
    required this.subtitle,
    this.trailingIcon = Icons.arrow_drop_down_circle_outlined,
    this.leadingColor,
    this.gradient,
    this.onPressed,
  }) : super(key: key);

  final String title, subtitle;
  final IconData trailingIcon;
  final LinearGradient? gradient;
  final Color? leadingColor;
  final VoidCallback? onPressed;

  void showBottomSheet(context) {
    showMaterialModalBottomSheet(
      expand: true,
      bounce: true,
      barrierColor: colorConstants.lightShark,
      context: context,
      builder: (context) => Column(
        children: [
          DefaultHeadline(text: title),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => const ListTile(
                title: Text("MARKA"),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: colorConstants.lightShark,
      ),
      child: ListTile(
        onTap: onPressed,
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
              color: colorConstants.white,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(15, 15),
                    blurRadius: 15),
              ]),
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
