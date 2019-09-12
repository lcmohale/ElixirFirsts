defmodule First do
  import IO
  
  def say do
    IO.puts('Elixir functions have no explicit return, they return the result of the last expression.\n')
  end

  def say_say do
    say()
	puts('Elixir has the following types Tuples\nLists\nIntegers\nFloats\nAtom and String')
    IO.puts('A module in Elixir, is a collection of functions, somewhat like name-spaces, every elixir function must be defined, inside a module\nNOTE defmodule and the def aren\'t referred to as keywords, they are compilation constructs called macros\n')
    IO.puts('functions can end with a ? sign, functions that end with a ? is often used to indicate a function that, returns true or false \n\nplacing a ! character indicates a function which may raise a runtime error, this are conversions in the Elixir language, code writing\n')
  end

  def area_rectangle(a, b) do
  
    puts('mix format filename.ex , formats your code in a way I\'m still to find out?')
    puts('Elixir is a concurrent language, concurrency — having multiple tasks running simultaneously')

    a + b
  end

  def readData() do
    data = File.read("./First.ex")
	elem(data,1)
  end

  def zero?(0) do
	true
  end
  
  def zero?(h) when is_number(h) do
	false
  end
  
  def default(q\\2, e) do
	q + e
  end
end

