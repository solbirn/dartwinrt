// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ivector.dart';

final class _IVectorBool extends IVector<bool> {
  _IVectorBool.fromPtr(super.ptr, {required super.iterableIid});

  @override
  bool getAt(int index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(bool value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Bool value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, bool value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, bool value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, Bool value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, bool value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, bool value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, Bool value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, bool value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(bool value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<bool> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Bool>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Bool> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Bool> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<bool> value) {
    final pArray = calloc<Bool>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Bool> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Bool> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorGuid extends IVector<Guid> {
  _IVectorGuid.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Guid getAt(int index) {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<GUID> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<GUID> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Guid value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeGuidPtr = value.toNativeGUID();

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  GUID value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, GUID value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueNativeGuidPtr.ref, index, retValuePtr);

      free(valueNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Guid value) {
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, GUID value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, GUID value)>()(
        ptr.ref.lpVtbl, index, valueNativeGuidPtr.ref);

    free(valueNativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, Guid value) {
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, GUID value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, GUID value)>()(
        ptr.ref.lpVtbl, index, valueNativeGuidPtr.ref);

    free(valueNativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(Guid value) {
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, GUID value)>()(
        ptr.ref.lpVtbl, valueNativeGuidPtr.ref);

    free(valueNativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<Guid> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<GUID>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<GUID> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<GUID> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Guid> value) {
    final nativeGuids = <Pointer<GUID>>[];
    final pArray = calloc<GUID>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeGuidPtr = value.elementAt(i).toNativeGUID();
      pArray[i] = nativeGuidPtr.ref;
      nativeGuids.add(nativeGuidPtr);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<GUID> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<GUID> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    nativeGuids.forEach(free);
    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorInspectable<T> extends IVector<T> {
  _IVectorInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  final T Function(Pointer<COMObject>) creator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return creator(retValuePtr);
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl,
          (value as IInspectable).ptr.ref.lpVtbl,
          index,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<COMObject>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<COMObject> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(creator, length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> value) {
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<IInspectable>).elementAt(i).ptr.ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorInt16 extends IVector<int> {
  _IVectorInt16.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int16> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int16> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int16 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int16 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int16>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int16> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Int16> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Int16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Int16> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int16> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorInt32 extends IVector<int> {
  _IVectorInt32.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Int32> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Int32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Int32> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int32> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorInt64 extends IVector<int> {
  _IVectorInt64.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int64> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int64> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int64 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int64>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int64> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Int64> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Int64> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int64> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorString extends IVector<String> {
  _IVectorString.fromPtr(super.ptr, {required super.iterableIid});

  @override
  String getAt(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueHString = value.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueHString, index, retValuePtr);

      WindowsDeleteString(valueHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, String value) {
    final valueHString = value.toHString();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, IntPtr value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, String value) {
    final valueHString = value.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, IntPtr value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(String value) {
    final valueHString = value.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<String> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<IntPtr>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<IntPtr> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<IntPtr> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<String> value) {
    final handles = <int>[];
    final pArray = calloc<HSTRING>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toHString();
      handles.add(pArray[i]);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<IntPtr> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<IntPtr> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    handles.forEach(WindowsDeleteString);
    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorUint8 extends IVector<int> {
  _IVectorUint8.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint8> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint8> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint8 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint8 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint8 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint8 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint8>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint8> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Uint8> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint8>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Uint8> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint8> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorUint16 extends IVector<int> {
  _IVectorUint16.fromPtr(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint16> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint16> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint16 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint16 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint16>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint16> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Uint16> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Uint16> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint16> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorUint32 extends IVector<int> {
  _IVectorUint32.fromPtr(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Uint32> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Uint32> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint32> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorUint64 extends IVector<int> {
  _IVectorUint64.fromPtr(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint64> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint64> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint64 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint64 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint64>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint64> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Uint64> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Uint64> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint64> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorUri extends IVector<Uri> {
  _IVectorUri.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Uri getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final winrtUri = retValuePtr.toWinRTUri();
    return winrtUri.toDartUri();
  }

  @override
  bool indexOf(Uri value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueUri = value.toWinRTUri();

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueUri.ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Uri value) {
    final valueUri = value.toWinRTUri();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, valueUri.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, Uri value) {
    final valueUri = value.toWinRTUri();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, valueUri.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(Uri value) {
    final valueUri = value.toWinRTUri();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, valueUri.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<Uri> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<COMObject>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<COMObject> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toDartUriList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Uri> value) {
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      final winrtUri = value.elementAt(i).toWinRTUri();
      pArray[i] = winrtUri.ptr.ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorWinRTEnum<T> extends IVector<T> {
  _IVectorWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final T Function(int) enumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Int32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Int32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Int32> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value).map(enumCreator));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> value) {
    final pArray = calloc<Int32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<WinRTEnum>).elementAt(i).value;
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Int32> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int32> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

final class _IVectorWinRTFlagsEnum<T> extends IVector<T> {
  _IVectorWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final T Function(int) enumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Uint32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Uint32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int valueSize,
                      Pointer<Uint32> value,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value).map(enumCreator));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> value) {
    final pArray = calloc<Uint32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<WinRTEnum>).elementAt(i).value;
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                        Pointer<Uint32> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint32> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    free(pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
