// SPDX-FileCopyrightText: 2026 Kalle Fagerberg
// SPDX-FileCopyrightText: 2019-2021 Tony Arcieri
//
// SPDX-License-Identifier: MIT
//
// This file contains a ported version of the Rust micromath functions:
// https://github.com/tarcieri/micromath/blob/v2.1.0/src/float/copysign.rs

///|
/// Returns a number composed of the magnitude of `num` and the sign of
/// `sign`.
pub fn copysign(num : Float, sign : Float) -> Float {
  let source_bits = sign.reinterpret_as_uint()
  let source_sign = source_bits & SIGN_MASK
  let signless_destination_bits = num.reinterpret_as_uint() & SIGN_MASK.lnot()
  Float::reinterpret_from_uint(signless_destination_bits | source_sign)
}

///|
test "sanity check" {
  assert_eq(copysign(1.0, -1.0), -1.0)
  assert_eq(copysign(-1.0, 1.0), 1.0)
  assert_eq(copysign(1.0, 1.0), 1.0)
  assert_eq(copysign(-1.0, -1.0), -1.0)
  let large_float : Float = 100_000_000.13425345345
  assert_eq(copysign(large_float, -large_float), -large_float)
  assert_eq(copysign(-large_float, large_float), large_float)
  assert_eq(copysign(large_float, large_float), large_float)
  assert_eq(copysign(-large_float, -large_float), -large_float)
}
