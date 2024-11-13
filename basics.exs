42
nil
[1, 2, 3]
{:ok, 42}
%{name: "Joe", country: "Ireland"}
list_of_bytes = <<97, 98, 99, 100>>
a = 3
3 = a
7 = a  # should break
[head | tail] = [1, 2, 3, 4] 
[1, 3, 5] ++ [2, 4]
[1, 2, 3, 4, 5] -- [2, 4]
Enum.reduce([1, 2, 3, 4], fn (x, acc) -> x + acc end)
Enum.map(["a", "b", "cc"], fn x -> String.to_atom(x) end)
Enum.filter([1, 2, 3, 4, 5], fn x -> x > 2 end)
Enum.map(["a", "b", "c"], &String.to_atom/1)
book = %{
  title: "Programming Elixir",
  author: %{
    first_name: "Dave",
    last_name: "Thomass"
  },
  year: 2018
}
book[:title]  # yields "Programming Elixir"
Map.put(book, :title, "Programming Elixir >= 1.6")
new_book = %{book | title: "Programming Elixir >= 1.6"}
Map.fetch(book, :year)  # => {:ok, 2018}
Map.fetch(book, :taste)  # => :error
welcome_message = case get_language(user) do
  "IT" -> "Benvenuto #{user.name}"
  "PT" -> "Bem-vindo #{user.name}"
  _ -> "Welcome"
end
[1, 3, 5, 7, 9]
  |> Enum.filter(fn x -> x > 5 end)
  |> Enum.map(fn x -> x + 10 end)
  |> IO.puts

