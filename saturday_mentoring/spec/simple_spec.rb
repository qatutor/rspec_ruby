require 'rest-client'

RSpec.describe "simple test" do
  puts RestClient.get "http://petstore.swagger.io/v2/pet"
end
