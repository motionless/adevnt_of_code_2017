defmodule DayOneTest do
  use ExUnit.Case

  @tag :pending
  test "get the inverse captcha" do
    DayOne.input()
    |> DayOne.inverse_captcha
    |> IO.puts
  end

  test "get the inverse captcha version 2" do
    DayOne.input()
    |> DayOne.inverse_captcha
    |> IO.puts
  end
end
