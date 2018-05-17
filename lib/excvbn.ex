defmodule Excvbn do
  @moduledoc """
  Excvbn is a port
  """

  @doc """
  Evaluate a given password with option user-defined dictionary additions.

  ## Examples

      iex> Excvbn.test("Tr0ub4dour&3")
      %{"calc_time" => 12, "crack_times_display" => %{"offline_fast_hashing_1e10_per_second" => "less than a second", "offline_slow_hashing_1e4_per_second" => "32 minutes", "online_no_throttling_10_per_second" => "22 days", "online_throttling_100_per_hour" => "21 years"}, "crack_times_seconds" => %{"offline_fast_hashing_1e10_per_second" => 0.0019058, "offline_slow_hashing_1e4_per_second" => 1905.8, "online_no_throttling_10_per_second" => 1905800, "online_throttling_100_per_hour" => 686088000}, "feedback" => %{"suggestions" => ["Add another word or two. Uncommon words are better.", "Capitalization doesn't help very much", "Predictable substitutions like '@' instead of 'a' don't help very much"], "warning" => ""}, "guesses" => 19058000, "guesses_log10" => 7.280077322611945, "password" => "Tr0ub4dour&3", "score" => 2, "sequence" => [%{"base_guesses" => 11905, "dictionary_name" => "us_tv_and_film", "guesses" => 95240, "guesses_log10" => 4.978819386732842, "i" => 0, "j" => 9, "l33t" => true, "l33t_variations" => 4, "matched_word" => "troubadour", "pattern" => "dictionary", "rank" => 11905, "reversed" => false, "sub" => %{"0" => "o", "4" => "a"}, "sub_display" => "0 -> o, 4 -> a", "token" => "Tr0ub4dour", "uppercase_variations" => 2}, %{"guesses" => 100, "guesses_log10" => 2, "i" => 10, "j" => 11, "pattern" => "bruteforce", "token" => "&3"}]}

      iex> Excvbn.test("Tr0ub4dour&3", ["acme", "brick", "acmebrick"])
      %{"calc_time" => 12, "crack_times_display" => %{"offline_fast_hashing_1e10_per_second" => "less than a second", "offline_slow_hashing_1e4_per_second" => "32 minutes", "online_no_throttling_10_per_second" => "22 days", "online_throttling_100_per_hour" => "21 years"}, "crack_times_seconds" => %{"offline_fast_hashing_1e10_per_second" => 0.0019058, "offline_slow_hashing_1e4_per_second" => 1905.8, "online_no_throttling_10_per_second" => 1905800, "online_throttling_100_per_hour" => 686088000}, "feedback" => %{"suggestions" => ["Add another word or two. Uncommon words are better.", "Capitalization doesn't help very much", "Predictable substitutions like '@' instead of 'a' don't help very much"], "warning" => ""}, "guesses" => 19058000, "guesses_log10" => 7.280077322611945, "password" => "Tr0ub4dour&3", "score" => 2, "sequence" => [%{"base_guesses" => 11905, "dictionary_name" => "us_tv_and_film", "guesses" => 95240, "guesses_log10" => 4.978819386732842, "i" => 0, "j" => 9, "l33t" => true, "l33t_variations" => 4, "matched_word" => "troubadour", "pattern" => "dictionary", "rank" => 11905, "reversed" => false, "sub" => %{"0" => "o", "4" => "a"}, "sub_display" => "0 -> o, 4 -> a", "token" => "Tr0ub4dour", "uppercase_variations" => 2}, %{"guesses" => 100, "guesses_log10" => 2, "i" => 10, "j" => 11, "pattern" => "bruteforce", "token" => "&3"}]}

  """
  def test(password, options \\ []) do
    source =
      File.cwd!()
      |> Path.join("data/zxcvbn.js")
      |> File.read!
    Execjs.eval(~s{#{source}; module.exports("#{password}", #{Poison.encode!(options, escape: :javascript)})})
  end
end
