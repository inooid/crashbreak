Crashbreak.configure do |config|
  config.api_key = '<%= token %>'

  # Specify what will be sent to the server by attaching own formatters.
  config.error_formatters = [Crashbreak::DefaultSummaryFormatter.new, Crashbreak::EnvironmentVariablesFormatter.new]
end
