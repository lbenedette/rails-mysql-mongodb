# frozen_string_literal: true

class MongoDb
  def self.get_connection
    @connection ||= Mongo::Client.new(
      ['mongodb:27017'],
      user: 'user',
      password: 'password',
      database: 'two-mongodb')
  end

  def self.collection(name)
    get_connection[name]
  end
end
