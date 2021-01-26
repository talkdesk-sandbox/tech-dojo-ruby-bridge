# frozen_string_literal: true

require 'rest-client'

class ExternalApiGateway
  CREATE_ENDPOINT = 'https://run.mocky.io/v3/727fd888-f609-4896-82d5-8d051e38036f'
  UPDATE_ENDPOINT = 'https://run.mocky.io/v3/7e28a289-c560-40d3-95b9-e7544d4357c3'
  DELETE_ENDPOINT = 'https://run.mocky.io/v3/2e4472a4-ddc5-4f87-a7d5-baa60a7f7847'

  def create(data)
    RestClient.post(
      CREATE_ENDPOINT,
      data,
      content_type: :json, accept: :json
    )
  end

  def update(data)
    RestClient.put(
      UPDATE_ENDPOINT,
      data,
      content_type: :json, accept: :json
    )
  end

  def delete
    RestClient.delete DELETE_ENDPOINT
  end
end
