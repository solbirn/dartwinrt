// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the network connection types.
///
/// {@category enum}
class NetworkTypes extends WinRTFlagsEnum<NetworkTypes> {
  const NetworkTypes(super.value, {super.name});

  factory NetworkTypes.from(int value) => NetworkTypes.values
      .firstWhere((e) => e.value == value, orElse: () => NetworkTypes(value));

  static const none = NetworkTypes(0, name: 'none');
  static const internet = NetworkTypes(1, name: 'internet');
  static const privateNetwork = NetworkTypes(2, name: 'privateNetwork');

  static const List<NetworkTypes> values = [none, internet, privateNetwork];

  @override
  NetworkTypes operator &(NetworkTypes other) =>
      NetworkTypes(value & other.value);

  @override
  NetworkTypes operator |(NetworkTypes other) =>
      NetworkTypes(value | other.value);
}
