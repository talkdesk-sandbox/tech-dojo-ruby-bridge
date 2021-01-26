# frozen_string_literal: true

class CreateTicketConverter
  def initialize(options = {})
    @input = options.fetch(:input, {})
    # Example input:
    # {
    #   "title": "This is a title",
    #   "description": "description",
    #   "status": "open",
    #   "name": "Peter John",
    #   "phone_number": "+351111111111"
    # }
  end

  def convert
    # Example output:
    {
      "subject": @input['title'],
      "content": @input['description'],
      "status": @input['status'],
      "customer": {
        "name": @input['name'],
        "phone": @input['phone_number']
      }
    }
  end
end
