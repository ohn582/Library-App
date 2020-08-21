require 'pry'

class Layout

    attr_reader :prompt
    attr_accessor :user

    def initialize()
        @prompt = TTY::Prompt.new
    end

    def greet

        system "clear"

        puts 'Welcome to the NY Library, the best resource to find books that you need !!!'
        choice = self.prompt.select("What do you want to do:") do |info|
            info.choice "Your Name"
            info.choice "Previous User"
        end

        case choice
            when "Your Name"
                User.new_user

            when "Previous User"
                User.ret_user
        end      
    end



    def main_menu(start_user)
        # binding.pry
        system "clear"

        choice = self.prompt.select("What do you want to do?") do |info|
            info.choice "Genre"
            info.choice "My Books"
            info.choice "Edit User"
            info.choice "Exit"
            
        end
        case choice
            when "Genre"
                Book.new_book(start_user)
            when "My Books"
                start_user.my_books
            when "Edit User"
			    User.change_user
            when "Exit" 

        end        
    end



end