require 'pry'

class User < ActiveRecord::Base

    has_many :libraries
    has_many :books, through: :libraries

    def self.tty_prompt
        TTY::Prompt.new
    end

    def self.new_user
        name = self.tty_prompt.ask("Your name:")
        while name == " " || name == nil
            puts "Please enter again"
            name = self.tty_prompt.ask("Your name:")
        end

        age = self.tty_prompt.ask("Your age:")
        while age == " " || age == nil
            puts "Please enter again"
            age = self.tty_prompt.ask("Your age:")
        end

        User.create(name: name, age: age)

    end


    def self.change_user
	    name = self.tty_prompt.ask("Your new name:")
        while name == " " || name == nil
            puts "Please enter again"
            name = self.tty_prompt.ask("Your new name:")
        end
        

        change = self.tty_prompt.assign_attributes(:user_id)

       
    end




    def self.ret_user
        name = self.tty_prompt.ask("Welcome back! What is your name?")
        User.find_by(name: name)
    end




    def my_books

        # user_book = self.books.map do |join|
        #     join.name

        library_instance_array = Libraries.all.select {|join| join.user == self}
        # binding.pry
        book_array = library_instance_array.map {|join| join.book.title}
        book_choice = TTY::Prompt.new.select("Your Books", book_array)
        if TTY::Prompt.new.yes?("Delete book?")
            book_instance = Book.all.find_by(title: book_choice)
            Libraries.all.find_by(user: self, book: book_instance).destroy
            Layout.new.main_menu(self)
        else
            # binding.pry 
            Layout.new.main_menu(self)
        end


    end



end