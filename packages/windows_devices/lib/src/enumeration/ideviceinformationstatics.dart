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

import 'deviceclass.dart';
import 'deviceinformation.dart';
import 'deviceinformationcollection.dart';
import 'devicewatcher.dart';

/// @nodoc
const IID_IDeviceInformationStatics = '{c17f100e-3a46-4a78-8013-769dc9b97390}';

/// {@category interface}
class IDeviceInformationStatics extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IDeviceInformationStatics.fromPtr(super.ptr);

  factory IDeviceInformationStatics.from(IInspectable interface) =>
      IDeviceInformationStatics.fromPtr(
          interface.toInterface(IID_IDeviceInformationStatics));

  Future<DeviceInformation?> createFromIdAsync(String deviceId) {
    final retValuePtr = calloc<COMObject>();
    final deviceIdHString = deviceId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceIdHString, retValuePtr);

    WindowsDeleteString(deviceIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(
        retValuePtr,
        creator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformation?> createFromIdAsyncAdditionalProperties(
      String deviceId, IIterable<String>? additionalProperties) {
    final retValuePtr = calloc<COMObject>();
    final deviceIdHString = deviceId.toHString();
    final additionalPropertiesPtr = additionalProperties == null
        ? nullptr
        : IInspectable(additionalProperties
                .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr deviceId,
                            VTablePointer additionalProperties,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int deviceId,
                    VTablePointer additionalProperties,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceIdHString, additionalPropertiesPtr, retValuePtr);

    WindowsDeleteString(deviceIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(
        retValuePtr,
        creator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection> findAllAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
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

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        retValuePtr,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection> findAllAsyncDeviceClass(
      DeviceClass deviceClass) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Int32 deviceClass,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int deviceClass,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, deviceClass.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        retValuePtr,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection> findAllAsyncAqsFilter(String aqsFilter) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr aqsFilter,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int aqsFilter,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, aqsFilterHString, retValuePtr);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        retValuePtr,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection>
      findAllAsyncAqsFilterAndAdditionalProperties(
          String aqsFilter, IIterable<String>? additionalProperties) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();
    final additionalPropertiesPtr = additionalProperties == null
        ? nullptr
        : IInspectable(additionalProperties
                .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr aqsFilter,
                            VTablePointer additionalProperties,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, aqsFilterHString, additionalPropertiesPtr, retValuePtr);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        retValuePtr,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  DeviceWatcher? createWatcher() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromPtr(retValuePtr);
  }

  DeviceWatcher? createWatcherDeviceClass(DeviceClass deviceClass) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Int32 deviceClass,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int deviceClass,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, deviceClass.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromPtr(retValuePtr);
  }

  DeviceWatcher? createWatcherAqsFilter(String aqsFilter) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr aqsFilter,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int aqsFilter,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, aqsFilterHString, retValuePtr);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromPtr(retValuePtr);
  }

  DeviceWatcher? createWatcherAqsFilterAndAdditionalProperties(
      String aqsFilter, IIterable<String>? additionalProperties) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();
    final additionalPropertiesPtr = additionalProperties == null
        ? nullptr
        : IInspectable(additionalProperties
                .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr aqsFilter,
                            VTablePointer additionalProperties,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, aqsFilterHString, additionalPropertiesPtr, retValuePtr);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromPtr(retValuePtr);
  }
}
