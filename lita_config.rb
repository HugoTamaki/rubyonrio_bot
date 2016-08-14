Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "rubyonrio_bot"
  config.robot.mention_name = "rubyonrio_bot"

  config.adapters.shell.private_chat = true

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :debug

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  # config.robot.adapter = :shell

  config.robot.adapter = :telegram
  config.adapters.telegram.telegram_token = ENV["TELEGRAM_TOKEN"]

  # giphy api
  config.handlers.giphy.api_key = ENV["GIPHY_API_KEY"]
  config.handlers.giphy.rating = 'g'

  config.handlers.google_images.safe_search = :medium
  config.handlers.google_images.google_cse_id = ENV["GOOGLE_CSE_ID"]
  config.handlers.google_images.google_cse_key = ENV["GOOGLE_CSE_KEY"]

  # redis config
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  config.handlers.keepalive.url = ENV["KEEPALIVE_URL"]
  # config.handlers.keepalive.minutes = 300

  config.handlers.youtube_me.api_key = ENV["GOOGLE_CSE_KEY"]


  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
