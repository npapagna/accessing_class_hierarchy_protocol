require 'rspec'
require 'accessing_class_hierarchy_protocol'

require 'animal'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end