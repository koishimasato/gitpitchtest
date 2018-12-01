require 'json'
require 'httpclient'

def lambda_handler(event:, context:)
  client = HTTPClient.new
  client.debug_dev = $stderr

  webhook_url = 'your slack webhook_url'

  slack_message = {
    'text': 'Layer Test.'
  }

  res = client.post(webhook_url, slack_message.to_json)
  puts "code=#{res.code}"    # res.code : Fixnum
  puts HTTP::Status.successful?(res.code)
  puts res.headers
  puts res.body

  # { statusCode: 200, body: JSON.generate('Hello from Lambda!') }
end

lambda_handler(event: {}, context: {})


