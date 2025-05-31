import 'package:flutter/material.dart';

dynamic push(
    final BuildContext context,
    final Widget screen, {
      final bool fullscreenDialog = false,
    }) async {
  return await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (final context) => screen,
      fullscreenDialog: fullscreenDialog,
    ),
  );
}
