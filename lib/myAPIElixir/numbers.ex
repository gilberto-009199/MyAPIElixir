defmodule MyAPIElixir.Numbers do
  def sum_from_file(filename) do
    # |> = e um pipe
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end
  # Sintax suggar
  #  + Sobrecarga de metodos
  defp handle_file({ :ok, result }) do
    #result = String.split(result,",");
    #result = Enum.map(result, fn number -> String.to_integer(number) end)
    #result = Enum.sum(result);
    #result # Altima linha e sempre o resultado de retorno no elixir
    result = String.split(result, ",")
      |> Enum.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()
    {:ok, %{result: result}}

  end

  defp handle_file({ :error, reason }), do: {:error, %{ message: "Invalid File!"}}

end
