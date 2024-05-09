import 'package:flutter/material.dart';

import '../constant/dimens.dart';

class IconAndTitleWidget extends StatelessWidget {
  final IconData? icon;
  final String title;

  const IconAndTitleWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: k6SP),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            size: 21,
            icon,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultSpace / 2),
            child: Text(":"),
          ),
          SizedBox(
            width: kUserInfoTextDefaultWidth,
            child: Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 13
              ),
            ),
          )
        ],
      ),
    );
  }
}
