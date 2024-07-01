import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> message -> message
    "[WARNING]:" <> message -> message
    "[ERROR]:" <> message -> message
    _ -> "Invalid format"
  }
  |> string.trim()
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> _message -> "info"
    "[WARNING]:" <> _message -> "warning"
    "[ERROR]:" <> _message -> "error"
    _ -> "Invalid format"
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
