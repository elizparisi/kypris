require_relative "./kypris/version"
require 'pry'
require 'nokogiri'
require 'open-uri'

module Kypris
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "kypris/cli"
require_relative "kypris/product"