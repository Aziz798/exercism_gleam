import gleam/io

fn main() {
  hello()
  io.debug(hello())
}

pub fn hello() {
  "Hello, World!"
}
