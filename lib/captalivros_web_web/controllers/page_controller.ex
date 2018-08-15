defmodule CaptalivrosWebWeb.PageController do
  use CaptalivrosWebWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
