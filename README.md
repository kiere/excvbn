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
iex(1)> Excvbn.test("mysuperstrongpassword", ["acme", "brick", "acmebrick"])
%{"calc_time" => 21,
  "crack_times_display" => %{"offline_fast_hashing_1e10_per_second" => "2 minutes",
    "offline_slow_hashing_1e4_per_second" => "3 years",
    "online_no_throttling_10_per_second" => "centuries",
    "online_throttling_100_per_hour" => "centuries"},
  "crack_times_seconds" => %{"offline_fast_hashing_1e10_per_second" => 101.92546,
    "offline_slow_hashing_1e4_per_second" => 101925460,
    "online_no_throttling_10_per_second" => 101925460000,
    "online_throttling_100_per_hour" => 36693165600000},
  "feedback" => %{"suggestions" => [], "warning" => ""},
  "guesses" => 1019254600000, "guesses_log10" => 12.008282680143921,
  "password" => "mysuperstrongpassword", "score" => 4,
  "sequence" => [%{"base_guesses" => 13, "dictionary_name" => "us_tv_and_film",
     "guesses" => 50, "guesses_log10" => 1.6989700043360185, "i" => 0, "j" => 1,
     "l33t" => false, "l33t_variations" => 1, "matched_word" => "my",
     "pattern" => "dictionary", "rank" => 13, "reversed" => false,
     "token" => "my", "uppercase_variations" => 1},
   %{"base_guesses" => 563, "dictionary_name" => "passwords", "guesses" => 563,
     "guesses_log10" => 2.7505083948513462, "i" => 2, "j" => 6, "l33t" => false,
     "l33t_variations" => 1, "matched_word" => "super",
     "pattern" => "dictionary", "rank" => 563, "reversed" => false,
     "token" => "super", "uppercase_variations" => 1},
   %{"base_guesses" => 570, "dictionary_name" => "surnames", "guesses" => 570,
     "guesses_log10" => 2.7558748556724915, "i" => 7, "j" => 12,
     "l33t" => false, "l33t_variations" => 1, "matched_word" => "strong",
     "pattern" => "dictionary", "rank" => 570, "reversed" => false,
     "token" => "strong", "uppercase_variations" => 1},
   %{"base_guesses" => 2, "dictionary_name" => "passwords", "guesses" => 50,
     "guesses_log10" => 1.6989700043360185, "i" => 13, "j" => 20,
     "l33t" => false, "l33t_variations" => 1, "matched_word" => "password",
     "pattern" => "dictionary", "rank" => 2, "reversed" => false,
     "token" => "password", "uppercase_variations" => 1}]}
iex(2)>
```
