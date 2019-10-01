defmodule FindPercent do
	import IO 
	
	#:: means that the function on the left side returns a value whose type is what’s on the right side.
	@spec cal_perc :: number
	
	def start do
		case String.codepoints(String.upcase(gets('Enter P for Percentage and F for fragment'))) do
			["P", _ ] -> cal_perc()
			["F", _ ] -> cal_frag()
		end
	end
	
	def cal_frag do
		num = gets("What number do you want percentage from? ")
		perc = gets("What percentage do you want from that no? ")
		{num, _ } = Integer.parse(num) 
		{perc, _ } = Integer.parse(perc) 
		puts("#{perc}% from #{num} is: ")
		num / (perc *  100)
	end
	
	def cal_perc do
		num = gets("What number do you want the percentage from?  ")
		{num,_ } = Integer.parse(num)
		do_cal_perc(num)
	end

	def do_cal_perc(num) do
		perc = gets("How much percentage from that number do you want?  ")
		{perc,_} = Integer.parse(perc) 
		puts("#{perc}% of #{num} is: ")
		num * (perc / 100)	
	end
	
end