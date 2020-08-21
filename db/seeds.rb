User.destroy_all
Book.destroy_all
Libraries.destroy_all


tommy = User.create(name: "Tommy", age: 15)
lance = User.create(name: "Lance", age: 30)
niko = User.create(name: "Niko", age: 27)
petunia = User.create(name: "Petunia", age: 45)
alice = User.create(name: "Alice", age: 60)


b1 = Book.create(title: "The Catcher in the Rye", author: "JD Salinger", date: "July 16, 1951")
b2 = Book.create(title: "Catch-22", author: "Joseph Heller", date: "November 10, 1961")
b3 = Book.create(title: "To Kill a Mockingbird", author: "Harper Lee", date: "July 11, 1960")
b4 = Book.create(title: "Starship Troopers", author: "Robert A. Heinlein", date: "November 1959")
b5 = Book.create(title: "Harry Potter and the Sorcerer's Stone", author: " J. K. Rowling", date: "June 26, 1997")
b6 = Book.create(title: "The Giver", author: "Lois Lowry", date: "1993")

b7 = Book.create(title: "Iliad", author: "Homer", date: "762 BC")
b8 = Book.create(title: "Freakonomics", author: "Stephen J. Dubner and Steven Levitt", date: "April 12, 2005")
b9 = Book.create(title: "Monster", author: "Walter Dean Myers", date: "April 21, 1999")
b10 = Book.create(title: "The Invisible Man", author: "H. G. Wells", date: "1897")
b11 = Book.create(title: "War and Peace", author: " Leo Tolstoy", date: "1869")


Libraries.create(user_id: tommy.id, book_id: b2.id, genre: "Adventure")
Libraries.create(user_id: lance.id, book_id: b3.id, genre:"Fiction")
Libraries.create(user_id: niko.id, book_id: b4.id, genre: "Si-FI")
Libraries.create(user_id: petunia.id, book_id: b5.id, genre: "Fantasy")
Libraries.create(user_id: alice.id, book_id: b1.id, genre: "Fiction")

Libraries.create(user_id: tommy.id, book_id: b6.id, genre: "science fiction")
Libraries.create(user_id: lance.id, book_id: b7.id, genre:"poetry")
Libraries.create(user_id: niko.id, book_id: b8.id, genre: "Si-FI")
Libraries.create(user_id: petunia.id, book_id: b9.id, genre: "Fantasy")
Libraries.create(user_id: alice.id, book_id: b10.id, genre: "Fiction")
Libraries.create(user_id: alice.id, book_id: b11.id, genre: "Fiction")

puts "It has been seeded."