# frozen_string_literal: true

class EventLog
  def self.create(params)
    document = {}
    document[:name] = params[:name]
    document[:params] = params[:params].map do |param|
      {
        name: param[:name],
        type: param[:type],
        value: param[:value]
      }
    end
    document[:created_at] = Time.now
    document
  end
end
