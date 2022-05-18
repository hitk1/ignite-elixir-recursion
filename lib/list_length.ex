defmodule ListLength do
  def call(list), do: getLength(list)

  defp getLength([], 0), do: 0

  defp getLength([]), do: 0

  defp getLength([_h | tail]) do
    getLength(tail, 1)
  end

  defp getLength([], counter) do
    counter
  end

  defp getLength([hd | tl], counter) do
    getLength(tl, counter + 1)
  end
end
