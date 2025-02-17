// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _GuidMixin on MethodProjection {
  @override
  String get returnType => 'Guid';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<GUID>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `Guid`.
final class GuidMethodProjection extends MethodProjection with _GuidMixin {
  GuidMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `Guid` getters.
final class GuidGetterProjection extends GetterProjection with _GuidMixin {
  GuidGetterProjection(super.method, super.vtableOffset);
}

mixin _GuidListMixin on MethodProjection {
  @override
  String get returnType => 'List<Guid>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<GUID>>();

    try {
      ${ffiCall()}

      return retValuePtr.value.toList(length: pValueSize.value);
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `List<Guid>`.
final class GuidListMethodProjection extends MethodProjection
    with _GuidListMixin {
  GuidListMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `List<Guid>` getters.
final class GuidListGetterProjection extends GetterProjection
    with _GuidListMixin {
  GuidListGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `Guid` setters.
final class GuidSetterProjection extends SetterProjection {
  GuidSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final nativeGuidPtr = value.toNativeGUID();

    try {
      ${ffiCall(identifier: 'nativeGuidPtr.ref')}
    } finally {
      free(nativeGuidPtr);
    }
  }
''';
}

/// Parameter projection for `Guid` parameters.
final class GuidParameterProjection extends ParameterProjection {
  GuidParameterProjection(super.parameter);

  @override
  String get type => 'Guid';

  @override
  String get preamble =>
      'final ${name}NativeGuidPtr = $identifier.toNativeGUID();';

  @override
  String get postamble => 'free(${name}NativeGuidPtr);';

  @override
  String get localIdentifier => '${name}NativeGuidPtr.ref';
}

/// Parameter projection for `List<Guid>` parameters.
final class GuidListParameterProjection extends DefaultListParameterProjection {
  GuidListParameterProjection(super.parameter);

  @override
  String get type => 'List<Guid>';

  @override
  String get passArrayPreamble => '''
    final nativeGuids = <Pointer<GUID>>[];
    final pArray = calloc<GUID>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeGuidPtr = value.elementAt(i).toNativeGUID();
      pArray[i] = nativeGuidPtr.ref;
      nativeGuids.add(nativeGuidPtr);
    }''';

  @override
  String get passArrayPostamble => '''
    nativeGuids.forEach(free);
    free(pArray);''';
}
