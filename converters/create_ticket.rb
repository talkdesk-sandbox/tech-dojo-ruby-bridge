# frozen_string_literal: true

class CreateTicketConverter
  def initialize(options: {})
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
    # {
    #   "subject": "This is a title",
    #   "content": "description",
    #   "status": "open",
    #   "customer": {
    #     "name": "Peter John",
    #     "phone": "+35111111111"
    #   }
    # }

    nil
  end
end
