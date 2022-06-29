import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../feature/home/viewmodel/home_provider.dart';

class CustomModelSheetView extends StatelessWidget with BaseState {
  final String title;

  CustomModelSheetView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 1),
        Expanded(
            flex: 1,
            child: Text(
              title.toUpperCase(),
              style: context.textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )),
        Divider(
          color: colorConstants.shark,
          thickness: 1.0,
        ),
        Expanded(
          flex: 23,
          child: ListView.builder(
            itemCount: context.read<HomeProvider>().alfaRomeoList.length,
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.circle_outlined),
                title: Text(context
                    .read<HomeProvider>()
                    .alfaRomeoList[index]
                    .model
                    .toString())
                // leading: AnimatedCrossFade(
                //     firstChild: const Icon(Icons.circle_outlined),
                //     secondChild: const Icon(Icons.circle),
                //     crossFadeState: isSelected
                //         ? CrossFadeState.showSecond
                //         : CrossFadeState.showFirst,
                // duration: context.durationLow),
                ),
          ),
        )
      ],
    );
  }
}
