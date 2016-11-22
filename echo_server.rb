class UserEcho

  def initialize
    print_welcome_message
    print_instruction_message
    start
  end

  def print_welcome_message
    print "Welcome!\n"
  end

  def print_instruction_message
    print "Please enter a word to be reprinted, to exit this program please enter exit:\n"
  end

  def print_goodbye_message
    print "Goodbye!"
  end

  private

  def start
    input
  end

  def input
    @user_input = STDIN.readline.chomp
    exit_entered?
  end

  def exit
    @user_input == "exit"
  end

  def exit_entered?
    while exit == true
      print_goodbye_message
    else 
      input
    end
  end

end