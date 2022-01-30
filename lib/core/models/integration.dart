import 'package:flutter/material.dart';

class Integration {
  Integration({
    required this.name,
    this.website,
    this.starCount,
    this.description,
    this.image,
  });

  String name;
  String? website;
  int? starCount;
  String? description;
  Widget? image;
}
