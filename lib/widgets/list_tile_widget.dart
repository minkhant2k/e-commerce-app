import 'package:flutter/material.dart';
import 'package:k_shop/utils/helper/functions.dart';

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
    final darkMode = KHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: k8SP),
      shadowColor:darkMode? Colors.grey.withOpacity(0.2): Colors.black,
        child: ListTile(
          splashColor: Colors.purple.shade200,
          iconColor: kBotNavBarSelectItemColor,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(kDefaultRadius),
           side:BorderSide.none,
         ),
          onTap: onTap,
          leading: Icon(icon),
          title: Text(
            title,
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge,
          ),
        ),
      ),
    );
  }
}
