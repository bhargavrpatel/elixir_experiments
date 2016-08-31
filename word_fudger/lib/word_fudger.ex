defmodule WordFudger do
  @moduledoc """
  Messes up every other word in a given string.
  """

  @doc"""
  Upcases every other word in a given sentance. Example:

  iex> WordFudger.upcase("I am become death")
  "I AM become DEATH"
  """
  def upcase(string) do
    operate_every_other_word(string, fn(x) -> String.upcase(x) end)
  end

  defp operate_every_other_word(string, operation) do
    words = String.split(string)
    words_with_index = Stream.with_index(words)
    transformed_words = Enum.map(words_with_index, fn({word, index}) ->
      cond do
        rem(index, 2) == 0 -> word
        rem(index, 2) == 1 -> operation.(word)
      end
    end)
    Enum.join(transformed_words, " ")
  end

end
