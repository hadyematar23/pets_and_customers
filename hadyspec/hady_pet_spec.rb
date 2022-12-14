require './hadylib/hady_pet.rb'

RSpec.describe Pet do
  it 'the pet exists' do

    samson = Pet.new(:name => "Samson", :type => :dog, :age => 3)    

    expect(samson).to be_a(Pet)
  end

  it 'the pet has a name' do

    samson = Pet.new(:name => "Samson", :type => :dog, :age => 3)    

    expect(samson.name).to eq("Samson")
  end

  it 'the pet has a type' do

    samson = Pet.new(:name => "Samson", :type => :dog, :age => 3)    

    expect(samson.type).to eq(:dog)
  end

  it 'the pet has an age' do

    samson = Pet.new(:name => "Samson", :type => :dog, :age => 3)    

    expect(samson.age).to eq(3)
  end

  it 'at first, the pet has not been fed' do

    samson = Pet.new(:name => "Samson", :type => :dog, :age => 3)  

    expect(samson.fed?).to eq(false)
  end

  it "the dog can be fed!" do
    samson = Pet.new(:name => "Samson", :type => :dog, :age => 3)    
    samson.feed
    samson.fed?

    expect(samson.fed?).to eq(true)
  end
end 