// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// SharedOptions=--enable-experiment=nonfunction-type-aliases

// Introduce an aliased type.

class A {
  A();
  A.named();
  static void staticMethod<X>() {}
}

typedef T<X extends A> = X;

// Use the aliased type.


abstract class D2 extends C with T {}
//             ^
// [analyzer] unspecified
// [cfe] unspecified

abstract class D4 = C with T;
//             ^
// [analyzer] unspecified
// [cfe] unspecified

main() {
  T.named();
//^
// [analyzer] unspecified
// [cfe] unspecified

  T().unknownInstanceMethod();
//^
// [analyzer] unspecified
// [cfe] unspecified

  T.staticMethod<T>();
//^
// [analyzer] unspecified
// [cfe] unspecified

  T.unknownStaticMethod();
//^
// [analyzer] unspecified
// [cfe] unspecified
}
