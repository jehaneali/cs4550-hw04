defmodule Practice.Palindrome do
  def palindrome(x) do
    x == reverse_words(x)

  end

  # credit for reverse_words and reverse_chars:
  # https://github.com/NatTuck/scratch-2021-01/blob/master/notes-4550/06-elixir/rw.exs
  def reverse_words(line) do
    line
    |> String.split()
    |> Enum.map(&reverse_chars/1)
    |> Enum.join(" ")
  end

  def reverse_chars(word) do
    word
    |> String.to_charlist
    |> Enum.reverse
    |> to_string
  end
end
