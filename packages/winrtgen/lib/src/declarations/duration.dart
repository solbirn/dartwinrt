// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

class WinRTMethodReturningDurationProjection extends WinRTMethodProjection {
  WinRTMethodReturningDurationProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Duration $camelCasedName($methodParams) {
        final retValuePtr = calloc<Uint64>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return Duration(microseconds: retValuePtr.value ~/ 10);
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
}

class WinRTGetPropertyReturningDurationProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningDurationProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Duration get $exposedMethodName {
        final retValuePtr = calloc<Uint64>();

        try {
          ${ffiCall()}

          return Duration(microseconds: retValuePtr.value ~/ 10);
        } finally {
          free(retValuePtr);
        }
      }
''';
}

class WinRTSetPropertyReturningDurationProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningDurationProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Duration value) {
        final duration = value.inMicroseconds * 10;

        ${ffiCall(params: 'duration')}
      }
''';
}

class WinRTDurationParameterProjection extends WinRTParameterProjection {
  WinRTDurationParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => 'final ${name}Duration = $name.inMicroseconds * 10;';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '${name}Duration';
}
