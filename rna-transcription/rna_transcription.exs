defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]

  def to_rna(dna) do
    tranlate_map = %{
      ?G => 'C',
      ?C => 'G',
      ?T => 'A',
      ?A => 'U'
    }

    dna
    |> Enum.map(fn c -> tranlate_map[c] end)
    |> Enum.join()
    |> to_charlist()
  end
end
