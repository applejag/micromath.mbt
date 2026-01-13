// SPDX-FileCopyrightText: 2026 Kalle Fagerberg
// SPDX-FileCopyrightText: 2019-2021 Tony Arcieri
//
// SPDX-License-Identifier: MIT
//
// This file contains a ported version of the Rust micromath functions:
// https://github.com/tarcieri/micromath/blob/v2.1.0/src/float/signum.rs

///|
/// Returns a number that represents the sign of a number.
///
/// * `1.0` if the number is positive, `+0.0` or `@float.infinity`
/// * `-1.0` if the number is negative, `-0.0` or `@float.neg_infinity`
/// * `@float.not_a_number` if the number is `@float.not_a_number`
pub fn signum(sign : Float) -> Float {
  if sign.is_nan() {
    @float.not_a_number
  } else {
    copysign(1, sign)
  }
}

///|
test "sanity check" {
  assert_eq(signum(@float.infinity), 1.0)
  assert_eq(signum(0.0), 1.0)
  assert_eq(signum(1.0), 1.0)
  assert_eq(signum(@float.neg_infinity), -1.0)
  assert_eq(signum(-0.0), -1.0)
  assert_eq(signum(-1.0), -1.0)
}
