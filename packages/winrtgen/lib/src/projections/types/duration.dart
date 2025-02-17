// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _DurationMixin on MethodProjection {
  @override
  String get returnType => 'Duration';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartDuration();
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `Duration`.
final class DurationMethodProjection extends MethodProjection
    with _DurationMixin {
  DurationMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `Duration` getters.
final class DurationGetterProjection extends GetterProjection
    with _DurationMixin {
  DurationGetterProjection(super.method, super.vtableOffset);
}

mixin _DurationListMixin on MethodProjection {
  @override
  String get returnType => 'List<Duration>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<Uint64>>();

    try {
      ${ffiCall()}

      return retValuePtr.value
        .toList(length: pValueSize.value)
        .map((value) => Duration(microseconds: value ~/ 10));
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `List<Duration>`.
final class DurationListMethodProjection extends MethodProjection
    with _DurationListMixin {
  DurationListMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `List<Duration>` getters.
final class DurationListGetterProjection extends GetterProjection
    with _DurationListMixin {
  DurationListGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `Duration` setters.
final class DurationSetterProjection extends SetterProjection {
  DurationSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value.toWinRTDuration()')}
  }
''';
}

/// Parameter projection for `Duration` parameters.
final class DurationParameterProjection extends ParameterProjection {
  DurationParameterProjection(super.parameter);

  @override
  String get type => 'Duration';

  @override
  String get localIdentifier => '$identifier.toWinRTDuration()';
}

/// Parameter projection for `List<Duration>` parameters.
final class DurationListParameterProjection
    extends DefaultListParameterProjection {
  DurationListParameterProjection(super.parameter);

  @override
  String get type => 'List<Duration>';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toWinRTDuration();
    }''';

  @override
  String get fillArrayPostamble => '''
    if ($fillArraySizeVariable > 0) {
      value.addAll(pArray
          .toList(length: $fillArraySizeVariable)
          .map((value) => value.toDartDuration()));
    }
    free(pArray);''';

  @override
  String get receiveArrayPostamble => '''
    if (pValueSize.value > 0) {
      value.addAll(pArray.value
          .toList(length: pValueSize.value)
          .map((value) => value.toDartDuration()));
    }
    free(pValueSize);
    free(pArray);''';
}
