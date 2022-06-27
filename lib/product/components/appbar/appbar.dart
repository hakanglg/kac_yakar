import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_state.dart';

class DefaultAppBar extends StatelessWidget
    with PreferredSizeWidget, BaseState {
  final String appTitle = "KAÇ YAKAR";
  @override
  Widget build(BuildContext context) {
    /// This part is copied from AppBar class
    final ScaffoldState? scaffold = Scaffold.maybeOf(context);

    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
                borderRadius: borderConstants.radiusCircular,
                gradient: borderConstants.purplelinearGradient),
          ),
          context.emptySizedWidthBoxLow,
          Text(
            appTitle,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


// AppBar(
//       title: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             height: 15,
//             width: 15,
//             decoration: BoxDecoration(
//                 borderRadius: borderConstants.radiusCircular,
//                 gradient: borderConstants.purplelinearGradient),
//           ),
//           context.emptySizedWidthBoxLow,
//           Text(
//             appTitle,
//           ),
//         ],
//       ),
//     );