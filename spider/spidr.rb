
require 'spidr'

Spidr.site('http://www.parlonstv.com/') do |spider|
  spider.every_url { |url| puts url }
end

