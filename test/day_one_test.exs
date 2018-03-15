defmodule DayOneTest do
  use ExUnit.Case

  test "get the inverse captcha" do
    DayOne.input()
    |> DayOne.inverse_captcha(2)
    |> IO.puts
  end

  test "get the inverse captcha part 2" do
    DayOne.input()
    |> DayOne.inverse_captcha(div(String.length(DayOne.input()), 2))
    |> IO.puts()
  end
end
