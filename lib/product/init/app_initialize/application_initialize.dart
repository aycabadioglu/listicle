import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listicle/product/init/state/base_container.dart';

part 'initializers.dart';

class ApplicationInitialize {
  const ApplicationInitialize._();

  static Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Future.wait(
      [
        _OrientationsConfiguration().make(),
        _StatusBarInitializer().make(),
      ],
    );

    await _BaseContainerInitialize().make();
    await _SharedPreferencesInitializer().make();
    await _CacheStoreInitialize().make();
  }
}
