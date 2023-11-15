// Copyright 2012 The Emscripten Authors.  All rights reserved.
// Emscripten is available under two separate licenses, the MIT license and the
// University of Illinois/NCSA Open Source License.  Both these licenses can be
// found in the LICENSE file.

#include <stdio.h>

int main() {
  return 0;
}

int factorial(int a){
    if(a == 0){
        return 1;
    }
    return a * factorial(a - 1);
}