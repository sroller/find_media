#!/usr/bin/env ruby

require_relative './version'
require 'Digest/sha1'

module FINDMEDIA

def FINDMEDIA.videos(dir = "#{ENV['HOMEDRIVE']}#{ENV['HOMEPATH'].gsub(/\\/, '/')}/videos")
	# puts "#{dir}/**/*.MTS" if $verbose
	Dir["#{dir}/**/*.MTS"]
end

def self.digest(path)
	Digest::MD5.file(path).to_s
end

end # module

include FINDMEDIA
if __FILE__ == $0
	v = videos()
	puts v.size
end

