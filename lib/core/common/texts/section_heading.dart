import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class DSectionHeader extends StatelessWidget {
  const DSectionHeader({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "See All",
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.font18DarkBlackSemiBold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        showActionButton
            ? TextButton(
                onPressed: () {},
                child: Text(
                  buttonTitle,
                  style: AppStyles.font12BlueRegular,
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
