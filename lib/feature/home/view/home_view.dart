import 'package:flutter/material.dart';
import 'package:kac_yakar/feature/home/viewmodel/home_provider.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/base/base_state.dart';
import '../../../core/components/button/detail_button.dart';
import '../../../core/components/row/my_row.dart';
import '../../../core/components/three_dot/three_circle_dot.dart';
import '../../../core/constants/button/custom_outlined_linear_button.dart';
import '../../../product/components/appbar/appbar.dart';
import '../../../product/components/container/white_background.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseState {
  final testStringPickTheCar = "araç seçiniz";

  final testStringManuel = "manuel";

  // TODO :

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) => Scaffold(
            appBar: DefaultAppBar(),
            body: MyRow(
              child: Column(
                children: [
                  Expanded(flex: 2, child: _selectCitySection(context)),
                  context.emptySizedHeightBoxNormal,
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: CustomOutlinedLinearButton(
                                      isSelected: true,
                                      text: testStringPickTheCar)),
                              context.emptySizedWidthBoxNormal,
                              Expanded(
                                  child: CustomOutlinedLinearButton(
                                text: testStringManuel,
                                isSelected: false,
                              )),
                            ],
                          ),
                          context.emptySizedHeightBoxNormal,
                          Row(
                            children: [
                              Expanded(
                                  child: DetailButton(
                                title: "mark",
                                subtitle: "toyota",
                                onPressed: () => context
                                    .read<HomeProvider>()
                                    .showBottomSheet(context, "TEST"),
                              )),
                              context.emptySizedWidthBoxNormal,
                              Expanded(
                                  child: DetailButton(
                                title: "seri",
                                subtitle: "corolla",
                              )),
                            ],
                          ),
                          context.emptySizedHeightBoxNormal,
                          Row(
                            children: [
                              Expanded(
                                  child: DetailButton(
                                title: "kasa",
                                subtitle: "sedan",
                              )),
                              context.emptySizedWidthBoxNormal,
                              Expanded(
                                  child: DetailButton(
                                title: "tip",
                                subtitle: "1.4 d-4d",
                              )),
                            ],
                          ),
                          context.emptySizedHeightBoxNormal,
                          Row(
                            children: [
                              Expanded(
                                  child: DetailButton(
                                title: "vites",
                                subtitle: "manuel",
                              )),
                              context.emptySizedWidthBoxNormal,
                              Expanded(
                                  child: DetailButton(
                                title: "yakıt",
                                subtitle: "dizel",
                              )),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            )));
  }

  WhiteBackground _selectCitySection(BuildContext context) {
    return WhiteBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            color: colorConstants.lightShark,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: _iconExample(),
              ),
              title: Text("Tekirdağ",
                  style: context.textTheme.bodyText1!
                      .copyWith(color: colorConstants.white)),
            ),
          ),
          ThreeCircleDot(),
          Card(
            color: colorConstants.lightShark,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: _iconExample(),
              ),
              title: Text("Bodrum",
                  style: context.textTheme.bodyText1!
                      .copyWith(color: colorConstants.white)),
            ),
          )
        ],
      ),
    );
  }

  Container _iconExample() {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          borderRadius: borderConstants.radiusCircular,
          gradient: borderConstants.purplelinearGradient),
    );
  }
}
