defmodule Pipe do
	import IO
		
	def start do	
	   answer = gets('How much is one plus 1\n')
	   
	   case answer do
	      ["2",_] -> 2 |> first
		  _answer -> answer
	   end
	end
	
	defp first (with) do
		case with + 3 do
		   5 -> 'You get Pipes' |> second
		   _ -> 'Not Yet!'
		end
	end
	
	defp second (then) do
		case then do
			'You get Pipes' -> 'You get Pipes, with some pattern matching'
		end
	end
	
	def guards do
	    input = gets('Letter to Guard: ')
		
		case input do
			input when is_list(input) -> input <> "is a List"
			input when is_number(input) -> input <>" is a Number"
			input when is_float(input) -> input<> " is a Float"
			input when is_atom(input) -> input<> " is a Atom"
			input when is_bitstring(input) -> input<> " is a bitstring"
		end
		
		c = tl(["f","\n"])
		cond do
			c -> puts(c)
			c == "\n" -> input 
			input  -> " is a Number"
		end
	end
	
	@doc "Here we update the person maps on name key"
	def maps do
		person = %{name: 'LCMr_music',
				   alias: '@LCMr_music',
				   edu: %{Education => "Lere La Tshepe", School => "none"}
				  }
				  
		person = %{ person| name: "Sthabi"}
		
		get_in(person,[:edu, Education]) |> puts
		
		#puts(person.alias ++ ' ' ++ person[:name])
		IO.inspect(person)
		:ola
	end
	
end