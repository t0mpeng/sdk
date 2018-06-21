// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*kernel.class: A:needsArgs*/
/*omit.class: A:needsArgs*/
/*strong.class: A:direct,explicit=[A.T],needsArgs*/
class A<T> {
  /*element: A.m:needsSignature*/
  void m(T t) {}

  /*element: A.f:*/
  void f(int t) {}
}

main() {
  new A<int>().m is void Function(int);
  new A<int>().f is void Function(int);
}
