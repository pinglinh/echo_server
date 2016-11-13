class UserEcho

	def initialize(welcome, instructions)
		@welcome = "Welcome!"
		@instructions = "Please enter a word to be reprinted, to exit this program please enter exit:"
	end

	def welcome_message
		@welcome
	end

	def instruction_message
		@instructions
	end

	def start
		@welcome
		@instructions
		input
	end

	def input
		@@user_input = STDIN.readline.chomp
		exit_entered
	end

	def more_input
		input
	end

	def exit
		@@user_input == "exit"
	end

	def exit_entered?
		while exit == false
			more_input
		else 
			goodbye_message
		end
	end

	def goodbye_message
		"Goodbye!"
	end

end