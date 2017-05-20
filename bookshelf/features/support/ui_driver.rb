module DomainDriver

  def library
    @library ||= Library.new('testshelf')
  end

  def search_by_title(title)
    @search_results = library.search_by_title title
  end

  def search_results 
    @search_results
  end

  def add_book(title)
    library.add_book title
  end

  def clear_bookshelf
    library.clear_bookshelf
  end

end

module WebUIDriver

  def library
    unless @library
      @library = Library.new('bookshelf')
      Capybara.app.set :library, @library
    end
    @library
   
  end

  
  def search_by_title(title)
    visit '/'
    fill_in 'query', with: title
    click_button 'Search'
  end

  def add_book(title)
    library.add_book(title) 
  end

  def search_results
    all('.result').map { |element| element.text }
  end

  def clear_bookshelf
    library.clear_bookshelf
  end

end
