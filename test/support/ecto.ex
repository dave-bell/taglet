defmodule TagletEcto do
  def source_repo_priv(repo) do
    repo.config()[:priv] || "priv/#{repo |> Module.split |> List.last |> Macro.underscore}"
  end

  def build_repo_priv(repo) do
    Application.app_dir(Keyword.fetch!(repo.config(), :otp_app), source_repo_priv(repo))
  end
end
