import 'package:flutter/material.dart';
import '../../../core/base/base_state.dart';
import '../../../core/components/column/my_column.dart';
import '../../../core/components/row/my_row.dart';
import '../../../core/constants/lottie/lottie_enum.dart';
import '../../../core/manager/navigation_manager.dart';
import '../../../product/components/text/default_headline.dart';
import '../../../product/components/text/default_subtitle.dart';
import '../../../product/navigator/navigator_routes.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../../product/components/appbar/appbar.dart';

class OnboardView extends StatelessWidget with BaseState, NavigatorManager {
  OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: MyColumn(
        child: MyRow(
          child: Column(
            children: [
              const Spacer(),
              Expanded(flex: 2, child: _lottieSection(context)),
              const Spacer(),
              Expanded(flex: 3, child: _headliniText(context)),
              Expanded(child: _subtitle()),
              Expanded(child: _goHomeIconButton(context)),
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar _lottieSection(BuildContext context) {
    return CircleAvatar(
      minRadius: 1,
      backgroundColor: Colors.white,
      child: Lottie.asset(LottieItems.onboardNavigator.lottiePath,
          height: context.dynamicHeight(.3)),
    );
  }

  Padding _headliniText(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: DefaultHeadline(
        text: "Lorem Ipsum Dolar, Sit Amet!",
        align: TextAlign.center,
      ),
    );
  }

  DefaultSubtitle _subtitle() {
    return const DefaultSubtitle(
      text: "Lorem ipsum",
    );
  }

  IconButton _goHomeIconButton(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pushReplacementNamed(
            context, NavigateRoutes.home.withParam),
        icon: Icon(
          Icons.navigate_next,
          color: colorConstants.white,
        ));
  }
}
