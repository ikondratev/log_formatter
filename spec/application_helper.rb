require "spec_helper"

ENV["APP_ENV"] ||= "test"

require "bundler/setup"
Bundler.require(:default, ENV["APP_ENV"])

require "log_formatter/application_logger"