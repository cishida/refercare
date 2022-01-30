import 'package:flutter/material.dart';
import 'package:refercare/core/models/integration.dart';

class IntegrationsProvider extends ChangeNotifier {
  final List<Integration> _integrations = [
    Integration(name: 'Planet DDS'),
    Integration(name: 'Midmark'),
  ];

  List<Integration> get integrations {
    return _integrations;
  }

  void addIntegration(Integration integration) {
    _integrations.add(integration);
    notifyListeners();
  }
}
