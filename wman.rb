#!/usr/bin/env ruby
require 'open-uri'
require 'json'
require 'optparse'
require 'nokogiri'
require 'reverse_markdown'

opts = OptionParser.new

arg = ARGV.join(' ')

output = `man #{arg} 2>&1`
output.downcase!
if (output.include?("no manual entry"))
	uri = URI::encode("http://en.wikipedia.org/wiki/" + arg)
	doc = Nokogiri::HTML(open(uri)) rescue "404 Not Found"
	if doc != "404 Not Found"

	doc.css('script, link').each { |node| node.remove }
	markdown = doc.css('body').text.split("\n"). collect { |line| line.strip }.join("\n\n")

	File.open("out.txt", 'w+') {|f| f.write(markdown) }

	`pandoc -s -w man out.txt -o tmp`
	`groff -E -man -Tascii tmp > out.txt`
	`rm -f tmp`
	exec('less out.txt && rm -f out.txt')
else
	puts "I'm not smart enough to find that entry! Try checking your spelling."
end

else
	exec('man ' + arg)
end

