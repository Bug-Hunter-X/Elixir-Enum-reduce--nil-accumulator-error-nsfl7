```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)

# Correct way to handle empty list
list = []
result = Enum.reduce(list, 0, fn x, acc -> acc + x end) # 0 if the list is empty
IO.puts(result) # Output: 0

#Alternative solution using a default value
list = []
result = Enum.reduce(list, 0, &(&1 + &2))
IO.puts(result) # Output: 0
```