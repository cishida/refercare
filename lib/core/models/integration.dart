import 'package:flutter/material.dart';

class Integration {
  Integration({
    required this.name,
    this.route,
    this.website,
    this.starCount,
    this.description,
    this.image,
  });

  String name;
  String? route;
  String? website;
  int? starCount;
  String? description;
  Widget? image;
}
