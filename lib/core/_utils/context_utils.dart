import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Size getSize(BuildContext context) {
  try {
    return MediaQuery.of(context).size;
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
  return const Size(1, 1);
}
