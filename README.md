# Excvbn

This package runs the JS implementation of `zxcvbn` via ExecJS so that the results are the same. This fixes discrepancies in the implentation when using zxcvbn for validation on the client-side as well.

Elixir port of zxcvbn.js

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `excvbn` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:excvbn, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/excvbn](https://hexdocs.pm/excvbn).

## Usage

```elixir
Excvbn.test("mysuperstrongpassword", ["acme", "brick", "acmebrick"])
```
