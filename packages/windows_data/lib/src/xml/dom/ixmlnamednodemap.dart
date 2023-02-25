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

import 'ixmlnode.dart';

/// @nodoc
const IID_IXmlNamedNodeMap = '{b3a69eb0-aab0-4b82-a6fa-b1453f7c021b}';

/// {@category interface}
class IXmlNamedNodeMap extends IInspectable
    implements IVectorView<IXmlNode>, IIterable<IXmlNode> {
  // vtable begins at 6, is 8 entries long.
  IXmlNamedNodeMap.fromRawPointer(super.ptr);

  factory IXmlNamedNodeMap.from(IInspectable interface) =>
      IXmlNamedNodeMap.fromRawPointer(
          interface.toInterface(IID_IXmlNamedNodeMap));

  int get length {
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

  IXmlNode? item(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  IXmlNode? getNamedItem(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr name, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int name, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  IXmlNode? setNamedItem(IXmlNode? node) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL node, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL node, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        node == null ? nullptr : node.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  IXmlNode? removeNamedItem(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr name, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int name, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  IXmlNode? getNamedItemNS(Object? namespaceUri, String name) {
    final retValuePtr = calloc<COMObject>();

    final nameHString = convertToHString(name);

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL, LPVTBL namespaceUri,
                                IntPtr name, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, LPVTBL namespaceUri, int name,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            namespaceUri?.intoBox().ref.lpVtbl ?? nullptr,
            nameHString,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  IXmlNode? removeNamedItemNS(Object? namespaceUri, String name) {
    final retValuePtr = calloc<COMObject>();

    final nameHString = convertToHString(name);

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL, LPVTBL namespaceUri,
                                IntPtr name, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, LPVTBL namespaceUri, int name,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            namespaceUri?.intoBox().ref.lpVtbl ?? nullptr,
            nameHString,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  IXmlNode? setNamedItemNS(IXmlNode? node) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL node, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL node, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        node == null ? nullptr : node.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  // IVectorView<IXmlNode> methods
  late final _iVectorView = IVectorView<IXmlNode>.fromRawPointer(
      toInterface('{139d959e-e7b5-5cb6-a596-4b544478da9b}'),
      creator: IXmlNode.fromRawPointer,
      iterableIid: '{f1146ffc-8c92-56e8-93f1-711f86722633}');

  @override
  IXmlNode getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(IXmlNode value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int valueSize, List<IXmlNode> value) =>
      _iVectorView.getMany(startIndex, valueSize, value);

  @override
  IIterator<IXmlNode> first() => _iVectorView.first();

  @override
  List<IXmlNode> toList() => _iVectorView.toList();
}
