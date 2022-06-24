import 'package:flutter/material.dart';
import 'package:kac_yakar/core/base/base_state.dart';

import '../../../product/components/appbar/appbar.dart';

class OnboardView extends StatelessWidget with BaseState {
  OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
 
    );
  }
}
