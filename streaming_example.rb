require 'sinatra'

before do
  content_type :txt
end

connections = []

get '/consume' do
  stream(:keep_open) do |out|
    # store connection for later
    connections << out

    # remove connection when close
    out.callback

    # remove connection when close from error
    out.errback do
      logger.warn 'we just lost a connection'
      connections.delete(out)
    end
  end
end

get '/broadcast/:message' do
  connections.each do |out|
    out << "#{Time.now} -> #{params[:message]}" << "\n"
  end
  "Sent #{params[:message]} to all clients"
end

# test streaming

get '/har-har' do
  stream do |out|
    out << "Gnui"
    sleep 1.5
    out << "Gnoon"
    sleep 1.5
    out << "Gdee"
  end
end
