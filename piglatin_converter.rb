class PiglatinConverter
	def self.convert(a)
	  	if (a == nil) or (a == "")
	  		return a
	  	end
		a = a.downcase
		n = (a).index(/[aeiou]/)
		if ((a.split).match(/[a-z]+/))? == false)
			puts "You suck at following instructions. Bye!!!"
		end
		if n == 0
			output = a + "way"
		else
			consonants = a[0...n]
			aprey=a[n..-1]
			output = (aprey + consonants + "ay")
		end
	end
end

puts"Enter a word."
word=gets.chomp
puts PiglatinConverter.convert(word)
