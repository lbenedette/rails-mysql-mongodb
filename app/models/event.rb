# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :event_params
end
