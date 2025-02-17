// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IDevicePairingSettings = '{482cb27c-83bb-420e-be51-6602b222de54}';

/// Identifies a collection of settings for device pairing.
/// WiFiDirectConnectionParameters implements IDevicePairingSettings.
///
/// {@category interface}
class IDevicePairingSettings extends IInspectable {
  // vtable begins at 6, is 0 entries long.
  IDevicePairingSettings.fromPtr(super.ptr);

  factory IDevicePairingSettings.from(IInspectable interface) =>
      IDevicePairingSettings.fromPtr(
          interface.toInterface(IID_IDevicePairingSettings));
}
