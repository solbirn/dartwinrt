// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the type of devices that the user wants to enumerate.
///
/// {@category enum}
enum DeviceClass implements WinRTEnum {
  all(0),
  audioCapture(1),
  audioRender(2),
  portableStorageDevice(3),
  videoCapture(4),
  imageScanner(5),
  location(6);

  @override
  final int value;

  const DeviceClass(this.value);

  factory DeviceClass.from(int value) =>
      DeviceClass.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates what you'd like the device picker to show about a given
/// device. Used with the SetDisplayStatus method on the DevicePicker
/// object.
///
/// {@category enum}
class DevicePickerDisplayStatusOptions
    extends WinRTFlagsEnum<DevicePickerDisplayStatusOptions> {
  const DevicePickerDisplayStatusOptions(super.value, {super.name});

  factory DevicePickerDisplayStatusOptions.from(int value) =>
      DevicePickerDisplayStatusOptions.values.firstWhere(
          (e) => e.value == value,
          orElse: () => DevicePickerDisplayStatusOptions(value));

  static const none = DevicePickerDisplayStatusOptions(0, name: 'none');
  static const showProgress =
      DevicePickerDisplayStatusOptions(1, name: 'showProgress');
  static const showDisconnectButton =
      DevicePickerDisplayStatusOptions(2, name: 'showDisconnectButton');
  static const showRetryButton =
      DevicePickerDisplayStatusOptions(4, name: 'showRetryButton');

  static const List<DevicePickerDisplayStatusOptions> values = [
    none,
    showProgress,
    showDisconnectButton,
    showRetryButton
  ];

  @override
  DevicePickerDisplayStatusOptions operator &(
          DevicePickerDisplayStatusOptions other) =>
      DevicePickerDisplayStatusOptions(value & other.value);

  @override
  DevicePickerDisplayStatusOptions operator |(
          DevicePickerDisplayStatusOptions other) =>
      DevicePickerDisplayStatusOptions(value | other.value);
}
