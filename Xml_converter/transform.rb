require 'nokogiri'

doc = Nokogiri::XML(File.read('view_without_styles.xml'))
xslt = Nokogiri::XSLT(File.read('html_transformer.xsl'))
puts xslt.transform(doc)
