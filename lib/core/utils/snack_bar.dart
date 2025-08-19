import 'package:flutter/material.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';

showSnackBar(
  BuildContext context, {
  required String errorMessage,
  required SnackBarType type,
  int seconds = 2,
}) {
  IconSnackBar.show(
    duration: Duration(seconds: seconds),
    direction: DismissDirection.down,
    context,
    snackBarType: type,
    maxLines: 3,
    label: errorMessage,
  );
}
