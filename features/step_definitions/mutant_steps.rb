Given(/^I have a mutant$/) do
  @mutant = Mutant.new real_name: 'A', mutant_name: 'Tester', power: 'C'
  expect(@mutant.save).to be_an(Hash)
end

When(/^I retrieve all mutants$/) do
  @mutants = Mutant.all
end

Then(/^I should have an array of mutants$/) do
  expect(@mutants).to be_an(Array)
  expect(@mutants.first).to be_an(Mutant)
end

When(/^I create mutant with the attributes$/) do |table|
  @mutant = Mutant.new(table.hashes.first)
  expect(@mutant.save).to be_an(Hash)
end

And(/^I find the created mutant$/) do
  @found = Mutant.find(@mutant.id)
end

Then(/^the found mutant should be as expected$/) do
  expect(@mutant.to_h).to match(@found.to_h)
end