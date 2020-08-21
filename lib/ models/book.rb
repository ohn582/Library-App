require 'pry'

class Book < ActiveRecord::Base

    has_many :libraries
    has_many :users, through: :libraries

    attr_accessor :user 

     def self.tty_prompt
        TTY::Prompt.new
    end


    def self.new_book(user_object)


        system "clear"

        names_array = Libraries.all.map do |library|
            library.book.title
        end
        choice = TTY::Prompt.new.select("What kind of books?", names_array)

        case choice
            when "Catch-22"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all.second.id}", genre: "Adventure")
            when "Exit"
                
            when "To Kill a Mockingbird"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all.third.id}", genre: "Fiction")
            when "Exit" 
            
            when "Starship Troopers"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all.fourth.id}", genre: "Si-FI")
            when "Exit"
            
            when "Harry Potter and the Sorcerer's Stone"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all.fifth.id}", genre: "Fantasy")
            when "Exit"

            when "The Catcher in the Rye"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all.first.id}", genre: "Fiction")
            when "Exit"
            
            when "The Giver"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all[5].id}", genre: "science fiction")
            when "Exit"
            
            when "Iliad"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all[6].id}", genre: "poetry")
            when "Exit"

            when "Freakonomics"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all[7].id}", genre: "Non-fiction")
            when "Exit"

            when "Monster"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all[8].id}", genre: "Drama")
            when "Exit"
            
            when "The Invisible Man"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all[9].id}", genre: "science fiction")
            when "Exit"

            when "War and Peace"
                puts "added to the Libraries"
                Libraries.create(user_id: "#{user_object.id}", book_id: "#{Book.all.last.id}", genre: "novel")
            when "Exit"

        end
        
    end



    

end