defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    IO.puts([dna])

    dna
    |> Enum.map(fn c -> translate(c) end)
    |> Enum.join()
    |> to_charlist()
  end

  defp translate(?G), do: 'C'
  defp translate(?C), do: 'G'
  defp translate(?T), do: 'A'
  defp translate(?A), do: 'U'
end
