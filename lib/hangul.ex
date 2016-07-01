defmodule Hangul do
  @letters [
    {"ㄱ", "k"},
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
    {"ㅓ", "uh"},
    {"ㅡ", "eu"},
    {"ㅜ", "u"},
    {"ㅗ", "o"},
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

  @new_letters [
    {"ㄲ", ""},
    {"ㄸ", ""},
    {"ㅃ", ""},
    {"ㅆ", ""},
    {"ㅉ", ""},
    {"ㅇ", ""},
    {"ㅊ", ""},
    {"ㅋ", ""},
    {"ㅌ", ""},
    {"ㅍ", ""},
    {"ㅐ", ""},
    {"ㅑ", ""},
    {"ㅒ", ""},
    {"ㅔ", ""},
    {"ㅕ", ""},
    {"ㅖ", ""},
    {"ㅘ", ""},
    {"ㅙ", ""},
    {"ㅚ", ""},
    {"ㅛ", ""},
    {"ㅝ", ""},
    {"ㅞ", ""},
    {"ㅟ", ""},
    {"ㅠ", ""},
    {"ㅢ", ""},
  ]
end
