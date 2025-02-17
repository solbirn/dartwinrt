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
const IID_IPrinting3DMultiplePropertyMaterial =
    '{25a6254b-c6e9-484d-a214-a25e5776ba62}';

/// {@category interface}
class IPrinting3DMultiplePropertyMaterial extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPrinting3DMultiplePropertyMaterial.fromPtr(super.ptr);

  factory IPrinting3DMultiplePropertyMaterial.from(IInspectable interface) =>
      IPrinting3DMultiplePropertyMaterial.fromPtr(
          interface.toInterface(IID_IPrinting3DMultiplePropertyMaterial));

  IVector<int> get materialIndices {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromPtr(retValuePtr,
        iterableIid: '{421d4b91-b13b-5f37-ae54-b5249bd80539}',
        intType: IntType.uint32);
  }
}
