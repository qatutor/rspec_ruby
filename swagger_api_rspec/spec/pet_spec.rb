require 'lib/pet.rb'

# RSpec.describe 'pet' do
#   let(:base_url) { 'http://petstore.swagger.io/v2' }
#   let(:json) { JSON.parse(subject.body) }

#   describe '#post' do
#     subject { HTTParty.post "#{base_url}/pet", body: options, headers: headers }

#     let(:options) do
#       {
#         "id": 0,
#         "category": {
#           "id": 0,
#           "name": "string"
#         },
#         "name": "doggie",
#         "photoUrls": [
#           "string"
#         ],
#         "tags": [
#           {
#             "id": 0,
#             "name": "string"
#           }
#         ],
#         "status": "available"
#       }.to_json
#     end

#     let(:headers) do
#       {'Content-Type' => 'application/json'}
#     end

#     it 'creates a pet' do
#       expect(subject).to be_ok
#       expect(subject.code).to 200
#     end
#   end

#   describe '#get' do
#     subject { HTTParty.get "#{base_url}/pet/#{id}" }
#     let(:id) { 8246834499777792 }

#     it 'returns pet by id' do
#       expect(subject).to be_ok
#       expect(subject.code).to eq 200
#     end
#   end
# end

RSpec.describe Pet do
  let(:api) { Pet.new }
  let(:json) { JSON.parse(subject.body) }

  # describe '#post' do
  #   subject { api.post(options) }

  #   let(:options) do
  #     {
  #       "id": 0,
  #       "category": {
  #         "id": 0,
  #         "name": "string"
  #       },
  #       "name": "doggie",
  #       "photoUrls": [
  #         "string"
  #       ],
  #       "tags": [
  #         {
  #           "id": 0,
  #           "name": "string"
  #         }
  #       ],
  #       "status": "available"
  #     }.to_json
  #   end

  #   it 'creates a pet' do
  #     expect(subject).to be_ok
  #     expect(subject.message).to eq 'OK'

  #     expect(json).not_to eq(nil)
  #   end
  # end

  describe '#post' do
    subject { api.post2('good dog') }

    it 'creates a pet' do
      expect(subject).to be_ok
      expect(subject.message).to eq 'OK'
      expect(json['name']).to eq('good dog')
    end
  end

  describe '#get' do
    subject { api.get(id) }

    let(:id) { 8246834499777792 }

    it 'returns pet by id' do
      expect(subject).to be_ok
    end
  end
end
