defmodule DayOneTest do
  use ExUnit.Case

  test "get the inverse captcha" do
    captcha =
      InputValues.day_one_input()
      |> DayOne.inverse_captcha(1)

    assert captcha == 1203
  end

  test "get the inverse captcha part 2" do
    captcha =
      InputValues.day_one_input()
      |> DayOne.inverse_captcha(div(String.length(InputValues.day_one_input()), 2))

    assert captcha == 1146
  end
end
