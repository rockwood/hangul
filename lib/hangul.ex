defmodule Hangul do
  @letters [
    {"ㄱ", "g"},
    {"ㄴ", "n"},
    {"ㄷ", "d"},
    {"ㄹ", "rl"},
    {"ㅁ", "m"},
    {"ㅂ", "b"},
    {"ㅅ", "s"},
    {"ㅈ", "j"},
    {"ㅎ", "h"},
    {"ㅣ", "i"},
    {"ㅏ", "a"},
    {"ㅓ", "eo"},
    {"ㅡ", "eu"},
    {"ㅜ", "u"},
    {"ㅗ", "o"},
    {"ㄲ", "gg"},
    {"ㅋ", "kk"},
    {"ㅃ", "bb"},
    {"ㅍ", "p"},
    {"ㅉ", "jj"},
    {"ㅊ", "ch"},
    {"ㄸ", "dd"},
    {"ㅌ", "t"},
    {"ㅆ", "ss"},
    {"ㅇ", "ng"},
    {"ㅐ", "ae"},
    {"ㅑ", "ya"},
    {"ㅒ", "yae"},
    {"ㅔ", "e"},
    {"ㅕ", "yeo"},
    {"ㅖ", "ye"},
    {"ㅘ", "wa"},
    {"ㅙ", "wae"},
    {"ㅚ", "we"},
    {"ㅛ", "yo"},
    {"ㅝ", "wo"},
    {"ㅞ", "we"},
    {"ㅟ", "wi"},
    {"ㅠ", "yu"},
    {"ㅢ", "ui"},
  ]

  def begin() do
    prompt_random()
    begin()
  end

  def prompt_random() do
    {hangul, english} = Enum.random(@letters)
    input = IO.gets("#{hangul}: ")
    if input =~ english do
      IO.puts "Correct!"
    else
      IO.puts "Nope"
    end
  end
end
