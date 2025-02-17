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
import 'package:windows_system/windows_system.dart';

import 'knownfolderid.dart';
import 'knownfoldersaccessstatus.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersStatics4 = '{1722e6bf-9ff9-4b21-bed5-90ecb13a192e}';

/// {@category interface}
class IKnownFoldersStatics4 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IKnownFoldersStatics4.fromPtr(super.ptr);

  factory IKnownFoldersStatics4.from(IInspectable interface) =>
      IKnownFoldersStatics4.fromPtr(
          interface.toInterface(IID_IKnownFoldersStatics4));

  Future<KnownFoldersAccessStatus> requestAccessAsync(KnownFolderId folderId) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 folderId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int folderId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, folderId.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<KnownFoldersAccessStatus>.fromPtr(
        retValuePtr,
        enumCreator: KnownFoldersAccessStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<KnownFoldersAccessStatus> requestAccessForUserAsync(
      User? user, KnownFolderId folderId) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                Int32 folderId,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int folderId, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, userPtr, folderId.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<KnownFoldersAccessStatus>.fromPtr(
        retValuePtr,
        enumCreator: KnownFoldersAccessStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> getFolderAsync(KnownFolderId folderId) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 folderId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int folderId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, folderId.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(retValuePtr,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
