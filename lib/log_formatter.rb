require 'log_formatter/application_logger'

module LogFormatter
  # @param [Logger] logger
  def initialize_formatter!(logger)
    ApplicationLogger.instance = logger
  end

  # @param [String] description
  # @param [Hash] opts
  def l(description = nil, **opts)
    opts.merge!(class_name: self.class.name)
    ApplicationLogger.instance.info(description, opts)
  end

  # @param [Sting] description
  # @param [StandardError] error
  def le(description, error, **opts)
    opts.merge!(class_name: self.class.name)
    opts.merge!(class_error: error.class.name)
    opts.merge!(error_message: error.message)
    ApplicationLogger.instance.error(description, opts)
  end
end
