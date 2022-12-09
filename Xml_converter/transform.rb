# ссылка для проверки корректности отображения xslt-файла
# https://www.w3schools.com/xml/tryxslt.asp?xmlfile=cdcatalog&xsltfile=cdcatalog_ex2

require 'nokogiri'

doc = Nokogiri::XML(File.read('view_without_styles.xml'))
xslt = Nokogiri::XSLT(File.read('html_transformer.xsl'))
puts xslt.transform(doc)
