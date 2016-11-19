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

	def goodbye_message
		"Goodbye!"
	end

	private

	def start
		@welcome
		@instructions
		input
	end

	def input
		@@user_input = STDIN.readline.chomp
		exit_entered?
	end

	def exit
		@user_input == "exit"
	end

	def exit_entered?
		while exit == true
			goodbye_message
		else 
			input
		end
	end

end