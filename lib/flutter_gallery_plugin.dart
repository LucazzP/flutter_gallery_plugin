
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterGalleryPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_gallery_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
