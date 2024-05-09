import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';

class AccountSettingWidget extends StatelessWidget {
  final IconData? iconData;
  final String titleText, subTitleText;
  final Widget? trailing;

  final void Function()? onTap;

  const AccountSettingWidget({
    super.key,
    this.iconData,
    required this.titleText,
    required this.subTitleText,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minLeadingWidth: kDefaultSpace+k10SP,
      leading: Icon(iconData,size: k28IS,color: kBotNavBarSelectItemColor,),
      title: Text(titleText, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitleText, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
    );
  }
}
