defmodule MyAPIElixir.NumbersTest do
  use ExUnit.Case

  alias MyAPIElixir.Numbers

  describe "sum_from_file/1" do
    test " when there is a file with the given name, return the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 45}}

      assert response == expected_response

    end

    test " when there is no file " do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid File!"}}

      assert response == expected_response

    end

  end

end