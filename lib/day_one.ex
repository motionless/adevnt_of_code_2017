defmodule DayOne do
  def inverse_captcha(input_string, distance) do
    input_string
    |> convert_string_to_integer_list
    |> chunk_it(distance)
    |> Enum.filter(fn x -> match?(x) end)
    |> Enum.reduce(0, fn x, acc -> acc + List.first(x) end)
  end

  defp match?(x) do
    List.first(x) == List.last(x)
  end

  defp convert_string_to_integer_list(input_string) do
    input_string
    |> String.codepoints()
    |> Enum.map(fn x -> String.to_integer(x) end)
  end

  defp chunk_it(source, distance) do
    (source ++ Enum.take(source, distance - 1))
    |> Enum.chunk_every(distance + 1, 1, source)
  end
end
