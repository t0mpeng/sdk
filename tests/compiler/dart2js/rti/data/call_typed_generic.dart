// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:expect/expect.dart';
import 'package:meta/dart2js.dart';

/*kernel.class: A:needsArgs*/
/*omit.class: A:needsArgs*/
/*strong.class: A:direct,explicit=[A.T],needsArgs*/
class A<T> {
  /*element: A.call:needsSignature*/
  call(T t) {}
}

@noInline
test(o) => o is Function(int);

main() {
  Expect.isTrue(test(new A<int>()));
  Expect.isFalse(test(new A<String>()));
}
