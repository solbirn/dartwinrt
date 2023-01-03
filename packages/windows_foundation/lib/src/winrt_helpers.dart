// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'winrt_enum.dart';

/// Initializes the Windows Runtime on the current thread with a single-threaded
/// concurrency model.
///
/// {@category winrt}
void winrtInitialize() => RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);

/// Closes the Windows Runtime on the current thread.
///
/// {@category winrt}
void winrtUninitialize() => RoUninitialize();

extension WinRTStringConversion on Pointer<HSTRING> {
  /// Gets the Dart string at the handle pointed to by this object.
  String toDartString() => convertFromHString(value);
}

/// Creates a WinRT object.
///
/// ```dart
/// final object = CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
/// final calendar = ICalendar.fromRawPointer(object);
/// ```
///
/// {@category winrt}
Pointer<COMObject> CreateObject(String className, String iid) {
  // Activates the specified Windows Runtime class
  final inspectablePtr = ActivateClass(className);
  // Now use IInspectable to navigate to the relevant interface
  final inspectable = IInspectable(inspectablePtr);
  final objectPtr = inspectable.toInterface(iid);
  inspectable.release();
  // Return a pointer to the relevant class
  return objectPtr;
}

/// Activates the specified Windows Runtime class in the [className].
///
/// This returns the WinRT `IInspectable` interface, which is a subclass of
/// `IUnknown`.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
///
/// {@category winrt}
Pointer<COMObject> ActivateClass(String className,
    {Allocator allocator = calloc}) {
  // Create a HSTRING representing the object
  final hClassName = convertToHString(className);

  try {
    final inspectablePtr = allocator<COMObject>();
    final hr = RoActivateInstance(hClassName, inspectablePtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    // Return a pointer to the relevant class
    return inspectablePtr;
  } finally {
    WindowsDeleteString(hClassName);
  }
}

/// Creates the activation factory for the specified runtime class using the
/// `className` and `iid`.
///
/// ```dart
/// final object = CreateActivationFactory(
///     'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
///     IID_IPhoneNumberFormatterStatics);
/// final phoneNumberFormatter = IPhoneNumberFormatterStatics(object);
/// ```
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
///
/// {@category winrt}
Pointer<COMObject> CreateActivationFactory(String className, String iid,
    {Allocator allocator = calloc}) {
  // Create a HSTRING representing the object
  final hClassName = convertToHString(className);
  final pIID = GUIDFromString(iid);
  final activationFactoryPtr = allocator<COMObject>();

  try {
    final hr =
        RoGetActivationFactory(hClassName, pIID, activationFactoryPtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    // Return a pointer to the relevant class
    return activationFactoryPtr;
  } finally {
    free(pIID);
    WindowsDeleteString(hClassName);
  }
}

/// Determines whether [S] is the same type as [T].
///
/// ```dart
/// isSameType<String, String>(); // true
/// isSameType<String?, String>(); // false
/// ```
bool isSameType<S, T>() {
  void func<X extends S>() {}
  return func is void Function<X extends T>();
}

/// Determines whether [S] is the same type as [T] or [T?].
///
/// ```dart
/// isSimilarType<String?, String>(); // true
/// isSimilarType<String?, String?>(); // true
/// ```
bool isSimilarType<S, T>() => isSameType<S, T>() || isSameType<S, T?>();

/// Determines whether [S] is a subtype of [T] or [T?].
///
/// ```dart
/// isSubtype<Calendar, IInspectable>(); // true
/// isSubtype<IUnknown, IInspectable>(); // false
/// ```
bool isSubtype<S, T>() => <S>[] is List<T> || <S>[] is List<T?>;

/// Determines whether [T] is a subtype of `WinRTEnum`.
///
/// ```dart
/// isSubtypeOfWinRTEnum<AsyncStatus>(); // true
/// isSubtypeOfWinRTEnum<FileAttributes>(); // true
/// ```
bool isSubtypeOfWinRTEnum<T>() => isSubtype<T, WinRTEnum>();

/// Determines whether [T] is a subtype of `IInspectable`.
///
/// ```dart
/// isSubtypeOfInspectable<FileOpenPicker>(); // true
/// isSubtypeOfInspectable<INetwork>(); // false
/// ```
bool isSubtypeOfInspectable<T>() => isSubtype<T, IInspectable>();

/// Represents the trust level of an activatable class.
///
/// {@category Enum}
enum TrustLevel {
  /// The component has access to resources that are not protected.
  baseTrust,

  /// The component has access to resources requested in the app manifest and
  /// approved by the user.
  partialTrust,

  /// The component requires the full privileges of the user.
  fullTrust
}

extension IInspectableExtension on IInspectable {
  /// Returns the interface IIDs that are implemented by the current Windows
  /// Runtime class.
  ///
  /// The `IUnknown` and `IInspectable` interfaces are excluded.
  List<String> get iids {
    final pIIDCount = calloc<Uint32>();
    final pIIDs = calloc<Pointer<GUID>>();

    try {
      final hr = getIids(pIIDCount, pIIDs);
      if (SUCCEEDED(hr)) {
        return [
          for (var i = 0; i < pIIDCount.value; i++) pIIDs.value[i].toString()
        ];
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pIIDCount);
      free(pIIDs);
    }
  }

  /// Gets the fully qualified name of the current Windows Runtime object.
  String get runtimeClassName {
    final hstr = calloc<HSTRING>();

    try {
      final hr = getRuntimeClassName(hstr);
      if (SUCCEEDED(hr)) {
        return convertFromHString(hstr.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(hstr);
    }
  }

  /// Gets the trust level of the current Windows Runtime object.
  TrustLevel get trustLevel {
    final pTrustLevel = calloc<Int32>();

    try {
      final hr = getTrustLevel(pTrustLevel);
      if (SUCCEEDED(hr)) {
        switch (pTrustLevel.value) {
          case 0:
            return TrustLevel.baseTrust;
          case 1:
            return TrustLevel.partialTrust;
          case 2:
            return TrustLevel.fullTrust;
          default:
            throw ArgumentError('GetTrustLevel returned an unexpected value.');
        }
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pTrustLevel);
    }
  }
}
