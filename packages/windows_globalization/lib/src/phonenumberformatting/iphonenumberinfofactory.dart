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

import 'phonenumberinfo.dart';

/// @nodoc
const IID_IPhoneNumberInfoFactory = '{8202b964-adaa-4cff-8fcf-17e7516a28ff}';

/// {@category interface}
class IPhoneNumberInfoFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPhoneNumberInfoFactory.fromPtr(super.ptr);

  factory IPhoneNumberInfoFactory.from(IInspectable interface) =>
      IPhoneNumberInfoFactory.fromPtr(
          interface.toInterface(IID_IPhoneNumberInfoFactory));

  PhoneNumberInfo create(String number) {
    final retValuePtr = calloc<COMObject>();
    final numberHString = number.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr number,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int number,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, numberHString, retValuePtr);

    WindowsDeleteString(numberHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return PhoneNumberInfo.fromPtr(retValuePtr);
  }
}
