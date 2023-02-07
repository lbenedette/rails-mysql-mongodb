class EventsController < ApplicationController
  def log
    document = EventLog.create(event_params)
    collection = MongoDb.collection('event_logs')
    result = collection.insert_one(document)

    if result.n == 1
      render json: { status: 'ok' }
    else
      render json: { status: 'error' }, status: :bad_request
    end
  end

  def show
    collection = MongoDb.collection('event_logs')
    result = collection.find.map do |document|
      document
    end
    render json: result
  end

  private

  def event_params
    params.require(:event)
  end
end
