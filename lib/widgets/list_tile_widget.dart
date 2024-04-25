import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';

class ListTileWidget extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  final String title;
  const ListTileWidget({
    super.key,
    this.onTap,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: ListTile(
        splashColor: Colors.purple.shade200,
        iconColor: kBotNavBarSelectItemColor,
        onTap: onTap,
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
