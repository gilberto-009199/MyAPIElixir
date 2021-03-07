defmodule MyAPIElixir do

  alias MyAPIElixir.Users.Create, as: UserCreate

  defdelegate create_user(parametros), to: UserCreate, as: :call

end
