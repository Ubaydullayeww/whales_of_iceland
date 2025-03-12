import 'package:flutter/material.dart';

import 'dimens.dart';

sealed class AppTextStyles {
  static const TextStyle guides = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: AppDimens.d32,
  );
}