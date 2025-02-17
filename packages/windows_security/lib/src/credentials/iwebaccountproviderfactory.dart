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

import 'webaccountprovider.dart';

/// @nodoc
const IID_IWebAccountProviderFactory = '{1d767df1-e1e1-4b9a-a774-5c7c7e3bf371}';

/// {@category interface}
class IWebAccountProviderFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebAccountProviderFactory.fromPtr(super.ptr);

  factory IWebAccountProviderFactory.from(IInspectable interface) =>
      IWebAccountProviderFactory.fromPtr(
          interface.toInterface(IID_IWebAccountProviderFactory));

  WebAccountProvider createWebAccountProvider(
      String id, String displayName, Uri? iconUri) {
    final retValuePtr = calloc<COMObject>();
    final idHString = id.toHString();
    final displayNameHString = displayName.toHString();
    final iconUriUri = iconUri?.toWinRTUri();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr id,
                            IntPtr displayName,
                            VTablePointer iconUri,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int id, int displayName,
                    VTablePointer iconUri, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        idHString,
        displayNameHString,
        iconUriUri == null ? nullptr : iconUriUri.ptr.ref.lpVtbl,
        retValuePtr);

    WindowsDeleteString(idHString);
    WindowsDeleteString(displayNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return WebAccountProvider.fromPtr(retValuePtr);
  }
}
