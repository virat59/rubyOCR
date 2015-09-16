#!/usr/bin/env ruby
# encoding: utf-8

require "bunny"
require 'rubygems'
require 'rmagick'

output = `convert test.png -type Grayscale -scale 100% dst11.tif`

`tesseract dst11.tif OUT`

f = File.open("./OUT.txt", "r")
f.each_line do |line|
  puts line
end
f.close

`rm -rf dst11.tif OUT.txt`
