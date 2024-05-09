
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../widgets/icon_and_title_widget.dart';


class UserInfoViews extends StatelessWidget {
  const UserInfoViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconAndTitleWidget(
          icon: Iconsax.user,
          title: "Yohan Sung",
        ),
        IconAndTitleWidget(
          icon: Iconsax.direct,
          title: "yohan20.@gmail.com",
        ),
        IconAndTitleWidget(
          icon: Iconsax.call,
          title: "09257001517",
        ),
        IconAndTitleWidget(
          icon: Iconsax.location,
          title: "Yangon, Hlaing Township ",
        ),
      ],
    );
  }
}