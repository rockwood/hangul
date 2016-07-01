defmodule Hangul.CLI do
  @switches [help: :boolean]
  @aliases [h: :help]

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(args) do
    args
    |> OptionParser.parse(switches: @switches, aliases: @aliases)
    |> handle_parse
  end

  def process(:help) do
    IO.puts """
    usage: hangul
    """
    System.halt(0)
  end

  def process(:default) do
    Hangul.begin
  end

  defp handle_parse({[help: true], _, _}) do
    :help
  end

  defp handle_parse({_, _, _}) do
    :default
  end
end
