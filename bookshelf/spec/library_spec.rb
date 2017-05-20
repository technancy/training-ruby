require 'library'

describe "Library" do 
  subject { Library.new('testshelf') }

  it 'should find a book if the search matches a book in the library' do
    mysearch = "Grape"
    subject.clear_bookshelf
    subject.add_book( mysearch )
    result = subject.search_by_title( mysearch )
    expect(result).to eq(["Grape"])
  end

  it 'should error when searching with empty string' do
    mysearch = ""
    expect{subject.search_by_title(mysearch)}.to raise_error(ArgumentError)
  end

  it 'should error when searching with whitespace only string' do
    mysearch = "  "
    expect{subject.search_by_title(mysearch)}.to raise_error(ArgumentError)
  end

  it 'should error when searching with nil' do
    expect{subject.search_by_title(nil)}.to raise_error(ArgumentError)
  end

  it 'should find books with a partial match' do
    subject.clear_bookshelf
    subject.add_book( 'Sociology' )
    subject.add_book( 'Psychology' )
    subject.add_book( 'History' )
    mysearch = "ology"
    expect(subject.search_by_title(mysearch)).to eq(['Sociology','Psychology'])
  end
end
