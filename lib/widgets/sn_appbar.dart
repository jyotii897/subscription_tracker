import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class SnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SnAppBar({
    super.key,
    required this.title,
    this.notificationsEnabled = true,
    this.leading,
  });
  final Widget title;
  final bool notificationsEnabled;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: AppBar(
          backgroundColor: (Theme.of(context).appBarTheme.backgroundColor ?? Colors.white).withOpacity(0.5),
          elevation: 0,
          leading: leading,
          centerTitle: true,
          title: title,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
