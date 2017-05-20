Given(/^an empty bookshelf$/) do
end

Then(/^shows no results found$/) do
  expect( search_results ).to be_empty
end

Given(/^a bookshelf with one book$/) do
  clear_bookshelf
  add_book "Ruby Programming"
end

When(/^I search for a non existent book$/) do
  search_by_title 'Banana'
end

When(/^I search for a book$/) do
  search_by_title 'Ruby'
end

Then(/^shows the book$/) do
  expect( search_results ).to eq ["Ruby Programming"]
end

Given(/^a bookshelf with a few books$/) do
  clear_bookshelf
  add_book "Ruby Programming"
  add_book "Java Programming"
  add_book "Perl Programming"
  add_book "C# Programming"
end
