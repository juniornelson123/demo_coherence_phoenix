CaptalivrosWeb.Repo.delete_all CaptalivrosWeb.Coherence.User

CaptalivrosWeb.Coherence.User.changeset(%CaptalivrosWeb.Coherence.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> CaptalivrosWeb.Repo.insert!
|> Coherence.ControllerHelpers.confirm!
