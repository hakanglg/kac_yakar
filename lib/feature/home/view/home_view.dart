import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kac_yakar/core/components/row/my_row.dart';
import 'package:kac_yakar/product/components/container/white_background.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/button/detail_button.dart';
import '../../../product/components/appbar/appbar.dart';

class HomeView extends StatelessWidget with BaseState {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(),
        body: MyRow(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: WhiteBackground(
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
                        _threeCircleDot(context),
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
                  )),
              context.emptySizedHeightBoxNormal,
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color:
                                            colorConstants.legendaryLevender),
                                    backgroundColor:
                                        colorConstants.legendaryLevender),
                                onPressed: () {},
                                child: Text(
                                  "ARAÇ SEÇİNİZ",
                                  style: TextStyle(color: colorConstants.white),
                                )),
                          ),
                          context.emptySizedWidthBoxNormal,
                          Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "manuel".toUpperCase(),
                                  style: TextStyle(color: colorConstants.white),
                                )),
                          ),
                        ],
                      ),
                      context.emptySizedHeightBoxNormal,
                      Row(
                        children: [
                          Expanded(
                              child: DetailButton(
                            title: "marka",
                            subtitle: "toyota",
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
        ));
  }

  Column _threeCircleDot(BuildContext context) {
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
