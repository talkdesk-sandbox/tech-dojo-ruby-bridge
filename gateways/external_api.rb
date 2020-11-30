# frozen_string_literal: true

require 'rest-client'

class ExternalApiGateway
  CREATE_ENDPOINT = 'https://run.mocky.io/v3/0ec25a7a-3eba-4249-9eae-e32cba5923a7'

  def create(data)
    RestClient.post(
      CREATE_ENDPOINT,
      data,
      content_type: :json, accept: :json
    )
  end
end
