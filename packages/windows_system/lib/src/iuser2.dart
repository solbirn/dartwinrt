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

import 'userageconsentgroup.dart';
import 'userageconsentresult.dart';

/// @nodoc
const IID_IUser2 = '{98ba5628-a6e3-518e-89d9-d3b2b1991a10}';

/// {@category interface}
class IUser2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IUser2.fromPtr(super.ptr);

  factory IUser2.from(IInspectable interface) =>
      IUser2.fromPtr(interface.toInterface(IID_IUser2));

  Future<UserAgeConsentResult> checkUserAgeConsentGroupAsync(
      UserAgeConsentGroup consentGroup) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Int32 consentGroup,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int consentGroup,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, consentGroup.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<UserAgeConsentResult>.fromPtr(
        retValuePtr,
        enumCreator: UserAgeConsentResult.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
