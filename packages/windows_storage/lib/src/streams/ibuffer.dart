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
const IID_IBuffer = '{905a0fe0-bc53-11df-8c49-001e4fc686da}';

/// Represents a referenced array of bytes used by byte stream read and
/// write interfaces. Buffer is the class implementation of this interface.
///
/// {@category interface}
class IBuffer extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IBuffer.fromRawPointer(super.ptr);

  factory IBuffer.from(IInspectable interface) =>
      IBuffer.fromRawPointer(interface.toInterface(IID_IBuffer));

  int get capacity {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int get length {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set length(int value) {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
