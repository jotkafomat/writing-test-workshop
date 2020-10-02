require 'library'
describe Library do
  it 'can find a specific book' do
    lambeth_library = Library.new
    expect(lambeth_library.find_book('Eloquent JavaScript'))
    .to eq({title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'})
  end

  it 'can add a new book' do
     library_books = Library.new
     library_books.add_book("Harry Potter")
     expect(library_books.books.length).to eq (5)
   end

  it 'can remove a book' do
    library_books = Library.new

    library_books.remove_book("POODR")

     expect(library_books.books.length).to eq (3)
  end

  it 'can list all the books on a specific subject' do
    library_books = Library.new

    expect(library_books.all_books_by_subject('Ruby')).to eq ([{title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},{title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}])
  end

end
