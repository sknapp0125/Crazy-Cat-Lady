git remote add origin https://github.com/sknapp0125/Crazy-Cat-Lady.git
git push -u origin master


system ("clear")
#### methods are up here

#game over
def game_over
	puts "\tGAME OVER!"
	sleep (3)
	puts "\tWould you like to try again?"
	puts "\tY/N"
	play_again = gets.chomp.downcase
	if play_again.include? "y"
		load "./crazy_cat.rb"
	elsif play_again.include? "n"
		puts "Thanks for playing!"
		sleep (3)
		system ("clear")
		exit
	else
		puts "Goodbye!"
		sleep (3)
		system ("clear")
		exit
	end
end

#section breaks
def line_break
  puts "*" * 75
end

#in-game narration
def chat(statement)
	puts statement
	sleep (3)
end

#game choices
def options(question)
	puts question
	gets.chomp.downcase
end

#game intro
def intro
	chat "Congratulations! After many long years of hard work and diligence, you have achieved your goal - you are the Crazy Cat Lady!"
	chat "One day, while cleaning your humble hovel, you accidentally left the front door open and dear, sweet Miss Fluffypuffykins got out!"
	chat "She's just a baby! You have to find her and bring her home safe!"
	chat "Where to start?"
end



#### game starts here
puts title ="
▄████████    ▄████████    ▄████████  ▄███████▄  ▄██   ▄         ▄████████    ▄████████     ███           ▄█          ▄████████ ████████▄  ▄██   ▄   
███    ███   ███    ███   ███    ███ ██▀     ▄██ ███   ██▄      ███    ███   ███    ███ ▀█████████▄      ███         ███    ███ ███   ▀███ ███   ██▄ 
███    █▀    ███    ███   ███    ███       ▄███▀ ███▄▄▄███      ███    █▀    ███    ███    ▀███▀▀██      ███         ███    ███ ███    ███ ███▄▄▄███ 
███         ▄███▄▄▄▄██▀   ███    ███  ▀█▀▄███▀▄▄ ▀▀▀▀▀▀███      ███          ███    ███     ███   ▀      ███         ███    ███ ███    ███ ▀▀▀▀▀▀███ 
███        ▀▀███▀▀▀▀▀   ▀███████████   ▄███▀   ▀ ▄██   ███      ███        ▀███████████     ███          ███       ▀███████████ ███    ███ ▄██   ███ 
███    █▄  ▀███████████   ███    ███ ▄███▀       ███   ███      ███    █▄    ███    ███     ███          ███         ███    ███ ███    ███ ███   ███ 
███    ███   ███    ███   ███    ███ ███▄     ▄█ ███   ███      ███    ███   ███    ███     ███          ███▌    ▄   ███    ███ ███   ▄███ ███   ███ 
████████▀    ███    ███   ███    █▀   ▀████████▀  ▀█████▀       ████████▀    ███    █▀     ▄████▀        █████▄▄██   ███    █▀  ████████▀   ▀█████▀  


"
sleep (3)
intro
start = options("Front Yard or Back Yard")

line_break
if start.include? "f"
	chat "What a great big world! Poor Miss Fluffypuffykins must be so frightened! But we don't see her out in the yard."
elsif start.include? "b"
	chat "Oh, my. The neighbor's sweet puppy Sir Lollipop got into your backyard again. He doesn't like cats."
	chat "In the grass, next to his happily thumping tail, you see Miss Fluffypuffykins's pretty pink bow."
	chat "Miss Fluffypuffykins is gone."
	game_over
else
	chat "I guess you really don't love Miss Fluffypuffykins."
	chat "You put the Crazy Cat Lady title to shame."
	chat "SHAME!"
	game_over
end

chat "Where to next?"
direction = options("Left or Right")

line_break
if direction.include? "l"
	chat "Oh, my. That's a very busy intersection. Miss Fluffypuffykins doesn't know how dangerous cars are."
	chat "Goodness! It looks as though a helpful Toyota Camry taught her that valuable lesson..."
	game_over
	exit
elsif direction.include? "r"
	chat "The park! What a splendid idea. It is such a lovely day."
else
	chat "So that's all the effort you're going to put into the rescue."
	chat "Shame."
	game_over
	exit
end

chat "The park is so pretty this time of year. Though where would Miss Fluffypuffykins want to play?"
park = options("Playground or Pool")

line_break
if park.include? "pl"
	chat "Of course, the playground! Miss Fluffypuffykins is such a playful kitty. Why wouldn't she go to a playground?"
elsif park.include? ("p")
	chat "Miss Fluffypuffykins can't swim."
	chat "Bless her heart for trying, though."
	game_over
	exit
else
	chat "Seriously? All this way and you just give up?"
	chat "Would Miss Fluffypuffykins give up on you?"
	chat "I guess you'll never know."
	game_over
end

chat "There are so many people here, today! Where could Miss Fluffypuffykins be hiding?"
playground = options("JungleGym or Sandbox")

line_break
if playground.include? ("j")
	chat "Gracious! Little Miss Fluffypuffykins has climbed all the way to the tippy-tip-top of the jungle gym!"
elsif playground.include? ("s")
	chat "You don't want to check the sandbox."
	chat "You really don't."
	chat "Some children just get so excited..."
	chat "But seriously, don't go to the sandbox. Just go home."
	game_over
else
	chat "You are awful."
	chat "I don't think you're even trying."
	game_over
end

puts "Good heavens, how are we going to get dear little Miss Fluffypuffykins down from the tippy-tip-top of the jungle gym?"
get_down = options("Call Her Down or Climb Up")

line_break
if get_down.include? ("ca")
	chat "Miss Fluffypuffykins recognizes the sound of her mama's voice! She mewls faintly, in what must be distress from her adventuresome day."
	chat "Miss Fluffypuffykins daintily tries to get down on her own (brave kitty!), but she can't seem to find her way!"
	chat "Desperate, Miss Fluffypuffykins takes a flying leap of faith!"
	chat "A hawk catches her before you do."
	game_over
elsif get_down.include? ("cl")
	chat "Are you crazy?"
	chat "Oh. Okay."
	chat "While trying to find a foothold on a jungle gym clearly designed for and by eight-year-olds, Miss Fluffypuffykins finds her own way down."
	chat "Cats are resilient like that."
else
	chat "Maybe you should try goldfish."
	game_over
end

line_break
chat "At the end of a grand day, you and Miss Fluffypuffykins, safely riding along in your handbag, finally return to the safety of home!"
chat "Oh, my."
chat "It looks like you left the door open..."
chat "CONGRATULATIONS                      
                \`*-.                    
                 )  _`-.                 
                .  : `. .                
                : _   '  \               
                ; *` _.   `*-._          
                `-.-'          `-.       
                  ;       `       `.     
                  :.       .        \    
                  . \  .   :   .-'   .   
                  '  `+.;  ;  '      :   
                  :  '  |    ;       ;-. 
                  ; '   : :`-:     _.`* ;
               .*' /  .*' ; .*`- +'  `*' 
               `*-*   `*-*  `*-*'        
"
game_over