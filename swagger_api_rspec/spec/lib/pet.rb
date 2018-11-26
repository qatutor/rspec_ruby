class Pet
  include HTTParty

  base_uri 'http://petstore.swagger.io/v2'

  headers 'Content-Type' => 'application/json', 'Accept' => 'application/json'

  def post(options)
    self.class.post '/pet', body: options
  end

  def post2(name)
    options =
      {
        "id": 0,
        "category": {
          "id": 0,
          "name": "string"
        },
        "name": name,
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": "available"
      }.to_json

    self.class.post '/pet', body: options

  end

  def get(id)
    self.class.get "/pet/#{id}"
  end
end
