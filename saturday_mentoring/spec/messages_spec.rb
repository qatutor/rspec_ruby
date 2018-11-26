require "lib/messages.rb"
require "rspec"

describe "Messages" do

  before(:each) do
    @test_message = Messages.new
  end

  before(:all) do
    @example = "test01"
  end

  after(:each){}
  after(:all){}

  it "test 1" do
    expect(@test_message.my_message).to eq "Hello World!"
    expect(@example).to eq "test01"
    @example = "hello"
    expect(1+1).to eq 2
  end

  it "test 2" do
    expect(@test_message.my_message).to eq "Hello World!"
    puts "#{@example}"
    expect(@example).to eq "test01"
    expect(1+3).to eq 4
  end
end
