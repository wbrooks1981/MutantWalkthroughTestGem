Given(/^I have a term$/) do
  @term = TermFactory.build(:fall2016)
  expect(@term.save).to be_an(Hash)
end

When(/^I retrieve all terms$/) do
  @terms = Term.all
end

Then(/^I should have an array of terms$/) do
  expect(@terms).to be_an(Array)
  expect(@terms.first).to be_an(Term)
end

When(/^I create term with the attributes$/) do |table|
  @term = MutantSchoolAPIModel::Term.new(table.hashes.first)
  expect(@term.save).to be_an(Hash)
end

And(/^I find the created term$/) do
  @found = Term.find(@term.id)
end

Then(/^the found term should be as expected$/) do
  expect(@term.to_h).to match(@found.to_h)
end