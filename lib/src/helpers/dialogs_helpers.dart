import 'dart:async';

import 'package:flutter/material.dart' as material;

import 'm.dart';

abstract class DialogsHelpers {
  static void _dismissFauces(material.BuildContext context) =>
      material.FocusScope.of(context).unfocus();

  static Future showDialog(
    material.BuildContext mContext, {
    String? title,
    String? message,
    String? confirmationTitle,
    String? cancelTitle,
    void Function()? confirmationCallback,
    void Function()? cancelCallback,
  }) {
    _dismissFauces(mContext);
    material.Widget backButton(context) => material.TextButton(
          onPressed: () {
            material.Navigator.of(context).pop();
            cancelCallback?.call();
          },
          child: material.Text(cancelTitle ?? kMessages.back),
        );

    material.Widget okButton(context) => material.TextButton(
          onPressed: () {
            material.Navigator.of(context).pop();
            confirmationCallback?.call();
          },
          child: material.Text(confirmationTitle ?? kMessages.confirm),
        );

    material.Widget alert(context) => material.AlertDialog(
          title: title == null
              ? null
              : title == kMessages.somethingWentWrong
                  ? const material.Center(
                      child: material.Icon(
                        material.Icons.warning,
                        color: material.Colors.red,
                      ),
                    )
                  : material.Text(title),
          content: message == null ? null : material.Text(message),
          actions: [
            backButton(context),
            if (confirmationCallback != null) okButton(context)
          ],
          shape: material.RoundedRectangleBorder(
            borderRadius: material.BorderRadius.circular(25),
          ),
        );

    return material.showDialog(
      context: mContext,
      builder: (context) => alert(context),
    );
  }

  static Future showMessageDialog(
    material.BuildContext context, {
    String? message,
    void Function()? confirmationCallback,
  }) =>
      showDialog(
        context,
        message: message,
        confirmationCallback: confirmationCallback,
      );
  static Future showWarningDialog(
    material.BuildContext context, {
    String? message,
    void Function()? confirmationCallback,
  }) =>
      showDialog(
        context,
        title: '${kMessages.warning}...',
        message: message,
        confirmationCallback: confirmationCallback,
      );
  static Future showErrorDialog(
    material.BuildContext context, {
    String? message,
    void Function()? confirmationCallback,
  }) =>
      showDialog(
        context,
        title: kMessages.somethingWentWrong,
        message: message,
        confirmationCallback: confirmationCallback,
      );
}
