import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kac_yakar/core/components/column/my_column.dart';
import 'package:kac_yakar/core/components/row/my_row.dart';
import 'package:kac_yakar/core/constants/lottie/lottie_enum.dart';
import 'package:kac_yakar/core/manager/navigation_manager.dart';
import 'package:kac_yakar/product/components/text/default_headline.dart';
import 'package:kac_yakar/product/components/text/default_subtitle.dart';
import 'package:kac_yakar/product/navigator/navigator_routes.dart';
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
      child: const DefaultHeadline(
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
            context, NavigateRoutes.home.withParaf),
        icon: Icon(
          Icons.navigate_next,
          color: colorConstants.white,
        ));
  }
}
