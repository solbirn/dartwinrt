// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IToastNotificationHistory = '{5caddc63-01d3-4c97-986f-0533483fee14}';

/// {@category interface}
class IToastNotificationHistory extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IToastNotificationHistory.fromRawPointer(super.ptr);

  factory IToastNotificationHistory.from(IInspectable interface) =>
      IToastNotificationHistory.fromRawPointer(
          interface.toInterface(IID_IToastNotificationHistory));

  void removeGroup(String group) {
    final groupHString = convertToHString(group);

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr group)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int group)>()(ptr.ref.lpVtbl, groupHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(groupHString);
  }

  void removeGroupWithId(String group, String applicationId) {
    final groupHString = convertToHString(group);
    final applicationIdHString = convertToHString(applicationId);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr group, IntPtr applicationId)>>>()
            .value
            .asFunction<int Function(LPVTBL, int group, int applicationId)>()(
        ptr.ref.lpVtbl, groupHString, applicationIdHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(groupHString);
    WindowsDeleteString(applicationIdHString);
  }

  void removeGroupedTagWithId(String tag, String group, String applicationId) {
    final tagHString = convertToHString(tag);
    final groupHString = convertToHString(group);
    final applicationIdHString = convertToHString(applicationId);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, IntPtr tag, IntPtr group,
                            IntPtr applicationId)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int tag, int group, int applicationId)>()(
        ptr.ref.lpVtbl, tagHString, groupHString, applicationIdHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(tagHString);
    WindowsDeleteString(groupHString);
    WindowsDeleteString(applicationIdHString);
  }

  void removeGroupedTag(String tag, String group) {
    final tagHString = convertToHString(tag);
    final groupHString = convertToHString(group);

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, IntPtr tag, IntPtr group)>>>()
            .value
            .asFunction<int Function(LPVTBL, int tag, int group)>()(
        ptr.ref.lpVtbl, tagHString, groupHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(tagHString);
    WindowsDeleteString(groupHString);
  }

  void remove(String tag) {
    final tagHString = convertToHString(tag);

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr tag)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int tag)>()(ptr.ref.lpVtbl, tagHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(tagHString);
  }

  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL)>>>()
        .value
        .asFunction<int Function(LPVTBL)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void clearWithId(String applicationId) {
    final applicationIdHString = convertToHString(applicationId);

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, IntPtr applicationId)>>>()
            .value
            .asFunction<int Function(LPVTBL, int applicationId)>()(
        ptr.ref.lpVtbl, applicationIdHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(applicationIdHString);
  }
}
