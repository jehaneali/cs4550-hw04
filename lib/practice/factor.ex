defmodule Practice.Factor do
  # algorithm from https://people.revoledu.com/kardi/tutorial/BasicMath/Prime/Algorithm-PrimeFactor.html
  def factor(x) do
    #num = String.to_integer(x) <> "hello"
    #x <> "hey"
    String.to_integer(x)
    p = 2
    IO.puts(x<>"=")
    cond do
      #question: how do i do a loop?? very confused
      x >= p * p ->
        if rem(x, p) == 0 do
          #IO.puts(p <> "*")
          x = x / p
        else
          p = p + 1
        end
      true ->
    end

  end
end
