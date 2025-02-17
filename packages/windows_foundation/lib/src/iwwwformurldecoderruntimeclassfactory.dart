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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'wwwformurldecoder.dart';

/// @nodoc
const IID_IWwwFormUrlDecoderRuntimeClassFactory =
    '{5b8c6b3d-24ae-41b5-a1bf-f0c3d544845b}';

/// {@category interface}
class IWwwFormUrlDecoderRuntimeClassFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWwwFormUrlDecoderRuntimeClassFactory.fromPtr(super.ptr);

  factory IWwwFormUrlDecoderRuntimeClassFactory.from(IInspectable interface) =>
      IWwwFormUrlDecoderRuntimeClassFactory.fromPtr(
          interface.toInterface(IID_IWwwFormUrlDecoderRuntimeClassFactory));

  WwwFormUrlDecoder createWwwFormUrlDecoder(String query) {
    final retValuePtr = calloc<COMObject>();
    final queryHString = query.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr query,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, queryHString, retValuePtr);

    WindowsDeleteString(queryHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return WwwFormUrlDecoder.fromPtr(retValuePtr);
  }
}
