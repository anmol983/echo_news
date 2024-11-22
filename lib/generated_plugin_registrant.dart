import 'package:geolocator_web/geolocator_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins(Registrar registrar) {
  GeolocatorPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
