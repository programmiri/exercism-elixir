defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(&translate/1)
  end

  defp translate(?G), do: ?C
  defp translate(?C), do: ?G
  defp translate(?T), do: ?A
  defp translate(?A), do: ?U
end
