class Wynvotes
	def main_menu #main voting menu
		puts "What would you like to do? Create, List, Update, Vote, or Leave"
		choice = (gets.chomp.downcase)
			puts "(C)reate, (L)ist, (U)pdate, (V)ote, or (E)xit"
		choice = gets.chomp.downcase
	if choice.include? "c"
			create
		elsif choice.include? "l"
			list
		elsif choice.include? "u"
			update
		elsif choice.include? "v"
			vote
		else choice.include? "e"	
			abort "Thanks for voting!"
		end 
	end

	def create #create menu for Politicians or Voters
		puts "What would you like to create?"
		puts "(P)olitician or (V)oter"
		create_choice = gets.chomp.downcase
		if create_choice.include? "p"
			puts "Name?"
			name = gets.chomp.downcase
			puts "Party? Democrat or Republican"
			party = gets.chomp.downcase
		elsif create_choice.include? "v"
			puts "Name?"
			name = gets.chomp.downcase
			puts "Politics? Liberal, Conservative, Tea Party, Socialist, or Neutral"
			party = gets.chomp.downcase
		end
		main_menu
	end

	def list #lists out what they are, their names, and which party
		@person_array.each{|person|
			puts "* #{person.class}, #{person.name}, #{person.party_choice}"
		main_menu
	end

	def update #update any of the lists
		puts "Whom would you like to update?"
		search_name = gets.chomp.capitalize
		@person_array.each do |person|
			if search_name == person.name
				puts "New name?"
			person.name = gets.chomp.capitalize
				if person.class.to_s == "Voter"
					puts "New Politics?"
			elsif person.class.to_s == "Politician"
					puts "New Party?"
				end
				person.party_choice = gets.chomp.capitalize
			end
		end
		main_menu
	end
end