defmodule Membrane.Element.HTTPoison do
  @moduledoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = []

    opts = [strategy: :one_for_one, name: Membrane.Element.HTTPoison]
    Supervisor.start_link(children, opts)
  end
end
