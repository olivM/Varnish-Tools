require 'anemone'

Anemone.crawl("http://www.parlonstv.com/") do |anemone|
  anemone.on_every_page do |page|
      puts page.url
      page.doc.css('img').each do |img|
        puts img.attributes['src'].value
      end
  end
end
