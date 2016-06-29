require('rspec')
require('replace')

describe('String#find_and_replace') do
  it("takes, from the user, a string, a word in the sting and a replacement for that word") do
    expect("I love cats".find_and_replace("cats","dogs")).to(eq("I love dogs"))
  end
end
