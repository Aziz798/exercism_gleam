// TODO: import the `gleam/int` module
import gleam/int

// TODO: import the `gleam/float` module
import gleam/float

// TODO: import the `gleam/string` module

import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  pence
  |> int.to_float()
  |> float.multiply(0.01)
}

pub fn pounds_to_string(pounds: Float) -> String {
  pounds
  |> float.to_string()
  |> string.append("£", _)
}
