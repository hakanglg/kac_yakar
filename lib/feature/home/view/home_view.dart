import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';
import 'package:kac_yakar/core/components/row/my_row.dart';
import 'package:kac_yakar/product/components/container/white_background.dart';
import 'package:kartal/kartal.dart';

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
                          context.emptySizedWidthBoxHigh,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Card(
                            shape: const StadiumBorder(),
                            color: colorConstants.lightShark,
                            child: ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              dense: true,
                              leading: CircleAvatar(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient:
                                        borderConstants.purplelinearGradient,
                                  ),
                                ),
                              ),
                              title: Text(
                                "Marka",
                                style: context.textTheme.bodyText2!.copyWith(
                                    color: colorConstants.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                "Marka",
                                style: context.textTheme.subtitle2!
                                    .copyWith(fontSize: 10),
                              ),
                              trailing: Icon(
                                Icons.arrow_drop_down_circle_outlined,
                                color: colorConstants.perfume,
                              ),
                            ),
                          )),
                          Expanded(
                              child: Card(
                            shape: const StadiumBorder(),
                            color: colorConstants.lightShark,
                            child: ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              dense: true,
                              leading: CircleAvatar(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient:
                                        borderConstants.purplelinearGradient,
                                  ),
                                ),
                              ),
                              title: Text(
                                "Marka",
                                style: context.textTheme.bodyText2!.copyWith(
                                    color: colorConstants.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                "Marka",
                                style: context.textTheme.subtitle2!
                                    .copyWith(fontSize: 10),
                              ),
                              trailing: Icon(
                                Icons.arrow_drop_down_circle_outlined,
                                color: colorConstants.perfume,
                              ),
                            ),
                          ))
                        ],
                      )
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
