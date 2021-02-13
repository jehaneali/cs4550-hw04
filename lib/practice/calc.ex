defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def my_sort(op, output, op_stack, pr) do
    String.to_integer(op)
      cond do
        is_number(op) ->
          output ++ [op]

        true ->
          op_checker(op, op_stack, pr)
      end
    end

    def op_checker(op, list, pr) do
      cond do
        pr[op] >= hd(list) ->
          [op | list]
        true ->
          op_checker(op, tl(list), pr)
      end
    end


  def find_op(list) do
    cond do
      is_number(hd(list)) -> find_op(tl(list))

    end
  end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    # code in this section from https://www.digitalocean.com/community/conceptual_articles/understanding-order-of-operations
    # precedence line is literally copied from ^
    precedence = %{ "*" => 2, "/" => 2, "+" => 1, "-" => 1}

    expression = String.split(expr, ~r/\s+/)
    output = []
    op_stack = []
    # |> hd
    # |> parse_float
    # |> :math.sqrt()

    Enum.each(expression, my_sort(expression, output, op_stack, precedence))
    postfix_list = output ++ op_stack

  end

end
    # def my_sort(op, output, op_stack) do
    #   cond do
    #     is_number(op) ->
    #       output ++ [op]
    #     true ->
    #       op_checker(op, op_stack)
    #   end
    # end

    # def op_checker(op, list) do
    #   cond do
    #     precedence[op] >= hd[list] ->
    #       [op | list]
    #     true ->
    #       op_checker(op, tl[list])
    #   end
    # end



    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching
