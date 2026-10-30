import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.startIcon,
    required this.text,
    this.endIcon,
    this.onTap,
  });

  final IconData startIcon;
  final String text;
  final Widget? endIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(startIcon),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: Color(0xff804F1E),
        ),
      ),
      trailing: endIcon ?? Icon(Icons.arrow_forward_ios_rounded, size: 32),
    );
  }
}
