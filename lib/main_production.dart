import 'package:flutter/material.dart';
import 'package:tdd/core/data/network/config.dart';
import 'package:tdd/core/platform/flavor_config.dart';

StatelessWidget getProdApp() {
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    values: FlavorValues(baseUrl: kProductionUrl),
  );

  return _ProdApp();
}

class _ProdApp extends StatelessWidget {
  const _ProdApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: Text("Production App")),
    );
  }
}