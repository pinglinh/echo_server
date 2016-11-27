class UserEcho

  def initialize
    start
  end

  private

  def start
    print_welcome_message
    print_instruction_message
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

class View

  def print_welcome_message 
    print "Welcome!\n"
  end

  def print_instruction_message
    print "Please enter a word to be reprinted, to exit this program please enter exit:\n"
  end

  def print_goodbye_message
    print "Goodbye!"
  end
  
end