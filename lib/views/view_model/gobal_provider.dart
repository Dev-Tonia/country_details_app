import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

BuildContext? context;

final textTheme = Provider<TextTheme>((ref) {
  return ref.state;
});


  // return ref.watch(countryProvider).serviceData();
