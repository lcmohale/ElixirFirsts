defmodule Multi do
    def say do
		:say
	end
	
	def say(%{:name => "LCMr_music"}) do
		%{:name => _} = %{:name => "LCMr_music"}
	end
	
	def say(x,x) do
		x = x
	end
	
	def addList([]), do: 0
	
	#Recursion
	def addList([head | tail]), do: head + addList(tail)
	
	
end

0670278278