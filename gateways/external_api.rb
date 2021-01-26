# frozen_string_literal: true

require 'rest-client'

class ExternalApiGateway
  CREATE_ENDPOINT = 'https://run.mocky.io/v3/727fd888-f609-4896-82d5-8d051e38036f'

  def create(data)
    RestClient.post(
      CREATE_ENDPOINT,
      data,
      content_type: :json, accept: :json
    )
  end
end
