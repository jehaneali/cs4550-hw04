defmodule Practice.Factor do
  # algorithm from https://people.revoledu.com/kardi/tutorial/BasicMath/Prime/Algorithm-PrimeFactor.html

  def factor(x) do
    IO.puts "hello"
    fList = [1]
    #num = String.to_integer(x) <> "hello"
    #x <> "hey"
    p = String.to_integer(x)

    divTwo(p)
    loop(p, 1, fList)
    to_string(fList)
    IO.puts "hi"
    IO.puts fList
    #p = Integer.parse(x)
    #p = 2

    #IO.puts(x<>"=")
    # cond do if x >= p * p
    #   #question: how do i do a loop?? very confused
    #     if rem(x, p) == 0 do
    #       #IO.puts(p <> "*")
    #       x = x / p
    #     else
    #       p = p + 1
    #     end

    # end

  end

  #trying again with alg from https://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/

  def divTwo(x) do
    cond do
      rem(x,2) == 0 ->
        divTwo(div(x,2))
      true ->
        x
    end
  end

  def loop(x, i, list) do
    if i <= :math.sqrt(x) do
      addToList(x, i+2, list)
    end

  end

  def addToList(x, i, list) do
    if rem(x, i) == 0 do
      [i | list]
      addToList(div(x, i), i, list)
    end
  end

end
