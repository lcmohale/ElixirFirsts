defmodule Functions do 
	import IO

    def total_cost(price, tax_rate) do
        price * (tax_rate + 1)
    end
	
	#a function that prints a list item from n to 0.

	def print(-1), do: :done
    def print(n) do
		puts("#{n} is #{[n]}")
		print (n - 1)
    end
	
	def sigma(0), do: 0
	def sigma(n) do
		puts("#{n} + #{n - 1} is #{n + n - 1}")
		n + sigma(n - 1)
	end
	
	def no_compare(n1,n2) do
		case n1 >= n2 do
			_ when (n1 == n2) -> "The No's are the same"
			true -> "The Big No is #{n1}"
			false -> "The Big No is #{n2}"
		end		
	end
	
	def no_compare2 n1,n2 do
		if(n1 >= n2, do: n1, else: n2)
	end
		
	def listed([arg1, arg2, arg3]) do
		Enum.each([arg1, arg2, arg3], fn x -> puts(x) end)
	end
	def listed([arg1, arg2, arg3], keywordlist) do
		cond do
			keywordlist[:name] == "Thabo" -> "Hola #{keywordlist[:name]}"
			keywordlist[:age] -> "Well I'll do something with #{keywordlist[:age]}"
			keywordlist[:type] == "Advert" -> "Here are your Adverts #{keywordlist[:type]}"
			true -> {:error,"wrong arguments supplied"}
		end
		#Highly discouraged THE LOOK UP IS O(n), linear keyword list
	end
	
	
end